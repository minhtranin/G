const axios = require("axios");
const Env = use("Env");

module.exports = {
  callAPI: function(data) {
    return new Promise((resolve, reject) => {
      const URL = "https://api.sendgrid.com/v3/mail/send";
      const Authenticate = 'Bearer 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'//`Bearer ${Env.get("SENDGIRD_SERECT_KEY")}`; 
      
      let cc =
      data.templateData.cc == "" || data.templateData.cc == null
        ? null
        : data.templateData.cc.split(","); // return array[]
    if (cc)
      cc = cc.map(item => {
        //return array
        return { email: item };
      });
    let bcc =
      data.templateData.bcc == "" || data.templateData.bcc == null
        ? null
        : data.templateData.bcc.split(",");
    if (bcc)
      bcc = bcc.map(item => {
        return { email: item };
      });


      var body = {
        from: {
          email: Env.get("MAIL_FROM_ADDRESS")
        },
        personalizations: [
          {
            to: [
              {
                email: "minhtc97@gmail.com"//data.toEmail
              }
            ],
            cc,
            bcc,
            dynamic_template_data: data.drawData
          }
        ],
        // reply_to: data.templateData.reply,
        template_id: 'd-c4c753223e1a4118b0cffdd3680abd24'     // data.templateData.template_id
      };
      if(!cc) delete body.personalizations[0].cc
      if(!bcc) delete body.personalizations[0].bcc
      axios({
        method: "POST",
        url: URL,
        data: body,
        headers: { Authorization: Authenticate }
      })
        .then(res => {
          resolve({
            status: "success",
            data: res
          });
        })
        .catch(error => {
          resolve({
            status: "error",
            error: error
          });
        });
    });
  },
  sendMail: async function(data) {
    let result = await this.callAPI(data);
    return result;
  }
};
