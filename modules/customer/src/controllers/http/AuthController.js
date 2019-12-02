"use strict";

const Mail = use("Mail");
const path = require("path");
const Env = use("Env");
const Customer = use("App/Models/Customer");
const CustomerLog = use("App/Models/CustomerLog");
const CustomerToken = use("App/Models/CustomerToken");
const PasswordReset = use("App/Models/PasswordReset");
const Helpers = use("App/Libraries/Helpers");
const { validate } = use("Validator");
const Database = use("Database");
const Hash = use("Hash");
const MessageCode = use("App/Libraries/MessageCode");
const Queue = use("Queue");
const { getCurrentCustomer } = use("App/Libraries/TraitsHelpers");
const Setting = use("App/Models/Setting");
class AuthController {
  /**
   * @swagger
   * /api/v1/login:
   *   post:
   *     tags:
   *       - Customer Auth
   *     summary: Auth Login
   *     description: User Login
   *     produces:
   *       - application/json
   *     parameters:
   *       - name: info
   *         description: User object
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/UserLogin'
   *     responses:
   *       200:
   *         description: User Login
   */
  async login({ request, response }) {
    var data = request.all();
    const rules = {
      email: "required",
      password: "required"
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed!",
        validation.messages()
      );
    }
    const customer = await Customer.query()
      .where("email", data.email)
      .orWhere("username", data.email)
      .first();
    if (customer) {
      if (!customer.is_active) {
        var token = Helpers.generate_token_reset_password();
        const password_reset = new PasswordReset();
        password_reset.email = customer.email;
        password_reset.token = token;
        password_reset.type = "customer_active";
        await password_reset.save();
        /* SEND MAIL */

        let constTemplateId = use("TemplateId")
          .TEMPLATE_CUSTOMER_ACTIVE_ACCOUNT;
        const ModelSendGird = await use("ModelSendGird").findSlugTemplate(
          constTemplateId
        );
        var userData = {
          toEmail: customer.getEmailAttribute(),
          // templateId: ModelSendGird.template_id,
          templateData : ModelSendGird,
          drawData: {
            full_name: customer.getFullNameAttribute(),
            token: token,
            CUSTOMER_LINK_ACTIVE_ACCOUNT: Env.get(
              "CUSTOMER_LINK_ACTIVE_ACCOUNT"
            )
          }
        };
        const sendGird = await use("SendGird").sendMail(userData);
        if (sendGird.status === "success") {
          customer.token = token;
          return response.respondWithSuccess(
            customer,
            "Please check your email to active account!"
          );
        }
        return response.respondWithError("Error Server Internal!");
      }
      const validatePassword = await Hash.verify(
        data.password,
        customer.password
      );
      if (validatePassword) {
        const customer_token = await CustomerToken.query()
          .where("customer_id", customer.id)
          .first();
        if (customer_token) {
          customer.token = customer_token.access_token;
        } else {
          const token = await CustomerToken.create({
            customer_id: customer.id,
            access_token: Helpers.generateToken()
          });
          customer.token = token.access_token;
        }
        return response.respondWithSuccess(customer, "Login Successful!");
      } else {
        return response.respondWithError("Email or password incorrect!");
      }
    } else {
      return response.respondWithError("Email or password incorrect!");
    }
  }

  /**
   * @swagger
   * /api/v1/logout:
   *   get:
   *     tags:
   *       - Customer Auth
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
  async logout({ request, response }) {
    var bearer = request.header("Authorization");
    bearer = bearer.replace("Bearer", "");
    const customerToken = await CustomerToken.query()
      .where("access_token", bearer)
      .first();
    customerToken.delete();
    return response.respondWithSuccess([], "Logout Successful!");
  }

  /**
   * @swagger
   * /api/v1/signup:
   *   post:
   *     tags:
   *       - Customer Auth
   *     summary: Auth Signup
   *     description: User Signup
   *     produces:
   *       - application/json
   *     parameters:
   *       - name: info
   *         description: User object
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/UserSignUp'
   *     responses:
   *       200:
   *         description: User Login
   */
  async signup({ request, response }) {
    var speakeasy = require("speakeasy");
    var data = request.all();
    const { createWallet } = use("App/Libraries/Ethereum");
    var results = await createWallet();
    const rules = {
      first_name: "required",
      last_name: "required",
      email: "required|email|unique:customers,email",
      password: "required",
      phone_number:"required|unique:customers,phone_number"
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed!",
        validation.messages()
      );
    }
    const sponsorKey = await Customer.query()
      .where("sponsorKey", data.sponsorKey)
      .first();
    var sponsorId;
    var sponsorIdSetting = await Setting.query()
      .where("skey", "sponsor_id")
      .first();
    if (!sponsorIdSetting) {
      sponsorId = 1;
    } else {
      sponsorId = sponsorIdSetting.value;
    }
    if (sponsorKey) {
      sponsorId = sponsorKey.id;
    }
    const trx = await Database.beginTransaction();
    const customer = new Customer();
    customer.first_name = data.first_name;
    customer.last_name = data.last_name;
    customer.email = data.email;
    customer.password = await Hash.make(data.password);
    customer.sponsorKey = Helpers.generateKeySponsor();
    customer.sponsor_id = sponsorId;
    customer.phone_number = data.phone_number;
    customer.customer_code = Helpers.customerCode();
    customer.country = data.country;
    customer.province = data.province;
    customer.address = data.address;
    customer.gender = data.gender;
    customer.tow_factor_auth = speakeasy.generateSecret({ length: 20 }).base32;
    customer.is_active = 0;
    //customer.level_commissions = 1;
    await customer.save(trx);
    var token = Helpers.generateToken();
    customer.customer_token().create({
      customer_id: customer.id,
      access_token: token
    });
    var token = Helpers.generate_token_reset_password();
    const password_reset = new PasswordReset();
    password_reset.email = customer.email;
    password_reset.token = token;
    password_reset.type = "customer_active";
    await password_reset.save();
    trx.commit();
    /* SEND MAIL */
    let constTemplateId = use("TemplateId").TEMPLATE_CUSTOMER_ACTIVE_ACCOUNT;
    const ModelSendGird = await use("ModelSendGird").findSlugTemplate(
      constTemplateId
    );
    var userData = {
      //email reciever
      toEmail: customer.getEmailAttribute(),
      //email tamplate id
      // templateId: ModelSendGird.template_id,
      templateData : ModelSendGird,
      //email data
      drawData: {
        name: customer.getFullNameAttribute(),
        token: token,
        link_active: Env.get("CUSTOMER_LINK_ACTIVE_ACCOUNT")
      }
    };
    const sendGird = await use("SendGird").sendMail(userData);
    if (sendGird.status === "success") {
      customer.token = token;
      return response.respondWithSuccess(
        customer,
        "Please check your email to active account!"
      );
    }
    return response.respondWithError("Error Server internal!");
  }

  /**
   * @swagger
   * /api/v1/forgot-password:
   *   post:
   *     tags:
   *       - Customer Auth
   *     summary: Auth Forgot
   *     description: User Forgot
   *     produces:
   *       - application/json
   *     parameters:
   *       - name: info
   *         description: User object
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/UserForgotPassword'
   *     responses:
   *       200:
   *         description: User Forgot
   */
  async forgot({ request, response }) {
    var data = request.all();
    const rules = {
      email: "required|email"
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed",
        validation.messages()
      );
    }
    const customer = await Customer.query()
      .where("email", data.email)
      .first();
    if (!customer) {
      return response.respondWithError("Email not found!");
    }
    var token = Helpers.generate_token_reset_password();
    const password_reset = new PasswordReset();
    password_reset.email = customer.email;
    password_reset.token = token;
    password_reset.type = "customer";
    await password_reset.save();

    /* SEND MAIL */
    let constTemplateId = use("TemplateId").TEMPLATE_CUSTOMER_FORGOT_PASSWORD;
    const ModelSendGird = await use("ModelSendGird").findSlugTemplate(
      constTemplateId
    );
    var userData = {
      toEmail: customer.getEmailAttribute(),
      // templateId: ModelSendGird.template_id,
      templateData : ModelSendGird,
      drawData: {
        full_name: customer.getFullNameAttribute(),
        token: token,
        CUSTOMER_LINK_RESET_PASSWORD: Env.get("CUSTOMER_LINK_RESET_PASSWORD")
      }
    };
    const sendGird = await use("SendGird").sendMail(userData);
    console.log(sendGird);

    if (sendGird.status === "success") {
      return response.respondWithSuccess(
        customer.email,
        "Please check your email to reset password!"
      );
    }
    return response.respondWithError(
      "Current cant send mail. Please try agian later!"
    );
  }

  /**
   * @swagger
   * /api/v1/active-account:
   *   post:
   *     tags:
   *       - Customer Auth
   *     summary: Auth active account
   *     description: Auth active account
   *     produces:
   *       - application/json
   *     parameters:
   *       - name: info
   *         description: Auth active account
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/UserActiveAccount'
   *     responses:
   *       200:
   *         description: User confirmForgot
   */
  async activeAccount({ request, response }) {
    var data = request.all();
    const rules = {
      token: "required"
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed",
        validation.messages()
      );
    }
    /* RESET PASSWORD */
    const password_reset = await PasswordReset.query()
      .where("token", data.token)
      .where("type", "customer_active")
      .first();
    if (password_reset) {
      const customer = await Customer.query()
        .where("email", password_reset.email)
        .first();
      customer.is_active = 1;
      await customer.save();
      password_reset.delete();
      const customer_token = await CustomerToken.query()
        .where("customer_id", customer.id)
        .first();
      if (customer_token) {
        customer.token = customer_token.access_token;
      } else {
        const token = await CustomerToken.create({
          customer_id: customer.id,
          access_token: Helpers.generateToken()
        });
        customer.token = token.access_token;
      }
      return response.respondWithSuccess(
        customer,
        "Active account successfull!"
      );
    } else {
      return response.respondWithError("Not found account for this email!");
    }
  }

  /**
   * @swagger
   * /api/v1/new-password:
   *   post:
   *     tags:
   *       - Customer Auth
   *     summary: Auth confirmForgot
   *     description: User confirmForgot
   *     produces:
   *       - application/json
   *     parameters:
   *       - name: info
   *         description: User object
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/UserNewPassword'
   *     responses:
   *       200:
   *         description: User confirmForgot
   */
  async confirmForgot({ request, response }) {
    var data = request.all();
    const rules = {
      token: "required",
      new_password: "required"
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed",
        validation.messages()
      );
    }
    /* RESET PASSWORD */
    const password_reset = await PasswordReset.query()
      .where("token", data.token)
      .where("type", "customer")
      .first();
    if (password_reset) {
      const customer = await Customer.query()
        .where("email", password_reset.email)
        .first();
      customer.password = await Hash.make(data.new_password);
      await customer.save();
      password_reset.delete();
      return response.respondWithSuccess(
        customer,
        "Update password successfull!"
      );
    } else {
      return response.respondWithError(
        "Not found request reset password for your email!"
      );
    }
  }

  /**
   * @swagger
   * /api/v1/user-profile:
   *   get:
   *     tags:
   *       - Customer Auth
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
  async userProfile({ request, response }) {
    const customer = await getCurrentCustomer(request.header("Authorization"));
    if (customer) {
      return response.respondWithSuccess(customer, "Get Info User Successful!");
    }
    return response.respondWithError("Your token invalid!");
  }
}
module.exports = AuthController;
