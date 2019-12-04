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
const AmazonS3 = use('AmazonS3')
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
    const speakeasy = require('speakeasy')
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
      .first();
    if (customer) {
      if (!customer.is_active) {
        const otp = speakeasy.totp({
          secret: customer.tow_factor_auth,
          encoding: 'base32'
        });
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
            token: otp,
            CUSTOMER_LINK_ACTIVE_ACCOUNT: Env.get(
              "CUSTOMER_LINK_ACTIVE_ACCOUNT"
            )
          }
        };
        const sendGird = await use("SendGird").sendMail(userData);
        if (sendGird.status === "success") {
          var token = Helpers.generate_token_reset_password();
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
        return response.respondWithSuccess(customer.toJSON(), "Login Successful!");
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
      *     summary: Create account
      *     consumes:
      *       - multipart/form-data
      *     security:
      *       - Bearer: []
      *     produces:
      *       - application/json
      *     parameters:
     *       - in: formData
      *         name: avatar
      *         type: file
      *         description: The file image to upload.
      *       - name: fullname 
      *         description: fullname 
      *         in:  query
      *         required: true
      *         type: string
      *         example: "TCM"
      *       - name: username 
      *         description: your username
      *         in:  query
      *         type: string
      *         example: "minhtranin"
      *       - name: email 
      *         description: your email account
      *         in:  query
      *         type: string
      *         example: "minhtc97@gmail.com"
      *       - name: password 
      *         description: password account
      *         in:  query
      *         type: string
      *         example: "123456"
      *       - name: phone_number 
      *         description: phone account
      *         in:  query
      *         type: string
      *         example: "0971725797"
      *          
      *     responses:
      *       200:
      *         description: Add account Successful
      */
  async signup({ request, response }) {
    var speakeasy = require("speakeasy");
    var data = request.all();
    const rules = {
      fullname:"required",
      username:"required|unique:customers,username",
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

    
    const trx = await Database.beginTransaction();
    const customer = new Customer();
    await request.multipart.file('avatar', {}, async (file) => {
      file.ContentType = 'image/png'
      const amazon = new AmazonS3()
      try {
          const fileAmz = await amazon.upload(file)
          customer.avatar = fileAmz.Location

      } catch (err) {
          return response.respondWithError(err)
      }
  }
  )
  await request.multipart.process()
    customer.fullname = data.fullname;
    customer.email = data.email;
    customer.password = await Hash.make(data.password);
  
    customer.phone_number = data.phone_number;
    customer.customer_code = Helpers.customerCode();


    customer.tow_factor_auth = speakeasy.generateSecret({ length: 20 }).base32;
    const otp = speakeasy.totp({
      secret: customer.tow_factor_auth,
      encoding: 'base32'
    });


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
        name: customer.fullname,
        token: otp,
        link_active: Env.get("CUSTOMER_LINK_ACTIVE_ACCOUNT")
      }
    };
    const sendGird = await use("SendGird").sendMail(userData);
    if (sendGird.status === "success") {
      console.log('hear')
      customer.token = token;
      return response.respondWithSuccess(
        customer.toJSON(),
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
    var speakeasy = require("speakeasy");
    var data = request.all();
    const rules = {
      otp: "required",
      two_factor_auth:"required",
    };
    const validation = await validate(data, rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is failed",
        validation.messages()
      );
    }
    /* RESET PASSWORD */
    var tokenValidates = speakeasy.totp.verify({
      secret: data.two_factor_auth,
      encoding: 'base32',
      token: data.otp,
      window: 10
    });


    if (tokenValidates) {
      const customer = await Customer.query()
        .where("tow_factor_auth", data.two_factor_auth)
        .first();
      customer.is_active = 1;
      await customer.save();
     
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
      return response.respondWithError("OTP code incorrect");
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
    const bearer = request.header("Authorization");
    const token = bearer.replace("Bearer", "")
    const customerToken = await CustomerToken.query().where('access_token',token).first()
    if (customerToken) {
        const customer = await Customer.query()
            .where('id',customerToken.customer_id)
            .first()
            if (customer) {
              return response.respondWithSuccess(customer.toJSON(), "Get Info User Successful!");
            }
          }

    
    return response.respondWithError("Your token invalid!");
  }
}
module.exports = AuthController;
