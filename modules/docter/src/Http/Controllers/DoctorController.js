"use strict";
const { validate } = use("Validator");
const Doctor = use("TTSoft/Docter/Models/Doctor");
const Helper = use("TTSoft/Docter/Helpers/Helpers");

const Hash = use("Hash");
class DoctorController {
  /**
   * @swagger
   * /api/v1/doctor/register:
   *   post:
   *     tags:
   *       - Docter_Auth
   *     summary: register account
   *     parameters:
   *       - name: info
   *         description: register info
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           example : {
   *              fullname : 'Trần Công Minh',
   *              email : 'minhtc97@gmail.com',
   *              password : '123',
   *              dob : '1997-11-29',
   *              address : 'Q9 HCM'
   *           }
   *     responses:
   *       200:
   *         description: Server is OK!
   *       500:
   *         description: Error Server Internal!
   */
  async register({ request, response }) {
    const data = request.all();
    const rules = {
      fullname: "required",
      email: "required|email|unique:doctors",
      password: "required",
      dob: "required",
      address: "required"
    };
    const validation = await validate(request.all(), rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is Failed",
        validation.messages()
      );
    }
    const doctor = new Doctor();
    const token = Helper.generateUid(); // uid doctor

    doctor.email = data.email;
    doctor.password = await Hash.make(data.password);
    doctor.fullname = data.fullname;
    doctor.dob = data.dob;
    doctor.address = data.address;
    doctor.uid = token;
    await doctor.save();

    let { EMPLATE_CUSTOMER_ACTIVE_ACCOUNT, CUSTOMER_LINK_ACTIVE_ACCOUNT } = use(
      "TTSoft/Docter/Helpers/const"
    );
    const dataMail = {
      drawdata: {
        full_name: data.fullname,
        token,
        CUSTOMER_LINK_ACTIVE_ACCOUNT
      },
      template: EMPLATE_CUSTOMER_ACTIVE_ACCOUNT,
      toMail: data.email
    };
    const status = await Helper.sendGrid(dataMail);
    return response.respondWithSuccess(
      data.email,
      "Please check your email to verify password!"
    );
  }

  /**
   * @swagger
   * /api/v1/doctor/login:
   *   post:
   *     tags:
   *       - Docter_Auth
   *     summary: login  doctor
   *     parameters:
   *       - name: info
   *         description: login
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           example : {
   *              email : 'minhtc97@gmail.com',
   *              password : '123'
   *           }
   *     responses:
   *       200:
   *         description: Server is OK!
   *       500:
   *         description: Error Server Internal!
   */
  async login({ request, response }) {
    const data = request.all();
    const rules = {
      email: "required|email",
      password: "required"
    };
    const validation = await validate(request.all(), rules);
    if (validation.fails()) {
      return response.respondWithError(
        "Validation is Failed",
        validation.messages()
      );
    }

    const exist_email = await Doctor.query()
      .where("email", data.email)
      .first();
    if (exist_email) {
      const exist_password = await Hash.verify(
        data.password,
        exist_email.password
      );
      if (exist_password) {
        const status_verify = exist_email.email_verify;
        if (status_verify == 1) {
          return response.respondWithSuccess(exist_email, "Login Success");
        }
        return response.respondWithError(
          "Your account have not verified email, Please verify email !"
        );
      }
    }
    return response.respondWithError("Email  password incorrect!");
  }
  /**
   * @swagger
   * /api/v1/doctor/verifyEmail/{uid}:
   *   get:
   *     tags:
   *       - Docter_Auth
   *     summary: verifyEmail
   *     parameters:
   *       - name: uid
   *         description: uid in mail
   *         in: path
   *         required: false
   *         type: string
   *         example : 'Doe3fkWTFdA8vuJT'
   *     responses:
   *       200:
   *         description: Server is OK!
   *       500:
   *         description: Error Server Internal!
   */
  async verifyEmail({ request, response }) {
    const { uid } = request.params; // uid token

    await Doctor.query()
      .where("uid", uid)
      .update({ email_verify: "1" });
    const doctor = await Doctor.query()
      .where("uid", uid)
      .first();
    if (doctor)
      return response.respondWithSuccess(doctor, "verify email success !");
    return response.respondWithError(
      "Current cant verify mail. Please try agian later"
    );
  }
}
module.exports = DoctorController;
