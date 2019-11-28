'use strict'
const Env = use('Env')
const axios = require('axios')
class Helpers{
        static async sendGrid(data){
                const URL = "https://api.sendgrid.com/v3/mail/send"
                const Authenticate = `Bearer ${Env.get('SENDGIRD_SERECT_KEY')}`
                var body = {
                    "from":{
                    "email" : Env.get('MAIL_FROM_ADDRESS')
                    },
                    "personalizations":[
                        {
                        "to":[
                            {
                            "email": data.toMail
                            }
                        ],
                        
                        "dynamic_template_data" : data.drawdata
                        }
                    ],
                    "template_id": data.template,
                            }
                        const status =  await axios({
                                method: 'POST',
                                url: URL,
                                data : body,
                                headers: {"Authorization" : Authenticate}
                            }).then(status=>"success")
                            .catch(err=>"error")
                            return status
        }
        static generateToken(limit = 40) {
            var uid = require('rand-token')
            var token = Env.get('APP_NAME','icarebase') +'-' + uid.generate(limit)
            return token
        }
        static generateUid() {
            var uid = require('rand-token').uid;
            return uid(16)
        }
       




}
module.exports = Helpers