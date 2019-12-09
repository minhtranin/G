'use strict'
const Customer = use('App/Models/Customer')
const firebase = require("firebase")
const Helpers = use("App/Libraries/Helpers");
class BoxChatController {
    /**
    * @swagger
    * /api/v1/customer/box-chat/create:
    *   post:    
    *     tags:
    *       - Customer Chat
    *     summary: inbox message
    *     description: inbox message
    *     produces:
    *       - application/json
    *     parameters:
    *       - name: message
    *         description: message inbox
    *         in:  body
    *         required: true
    *         type: string
    *         schema:
    *           $ref: '#/definitions/boxchat'
    *     responses:
    *       200:
    *         description: sent message
    */
    async create({ request, response }) {
        const data = request.all()
        const venderid  = await Customer.find(data.id_vendor)
        if(!venderid) return response.respondWithError ('id vendor is not exist, trying with another id customer')
        const firebaseConfig = {
            apiKey: "AIzaSyAaeyHDAiEzjf3ydpoYIsc3YMae8hAMO-s",
            authDomain: "gcom-7eca5.firebaseapp.com",
            databaseURL: "https://gcom-7eca5.firebaseio.com",
            projectId: "gcom-7eca5",
            storageBucket: "gcom-7eca5.appspot.com",
            messagingSenderId: "261812782005",
            appId: "1:261812782005:web:b7b56aa84f7a7bec10cffc",
            measurementId: "G-8YFE1XLXZD"
        };
        const customer = await Customer.find(1595)
        if (!firebase.apps.length) {
            firebase.initializeApp(firebaseConfig);
        }
        
        var database = firebase.database()
        const userRef = database.ref(Helpers.generateKeySponsor()).set({
            id_user1 : customer.id,
            id_user2 : data.id_vendor,
            name: customer.fullname,
            message: data.message,
            timestamp: `${new Date().getFullYear()}-${new Date().getMonth()}-${new Date().getDate()} ${new Date().getTime()}`  ,
        })
            .catch(err => {
                return respondWithError(err)
            })
            firebase.database().ref().on('value', (dataSnapshot)=> {
                console.log(dataSnapshot.val())
              });

        return response.send('sent')
    }
}
module.exports = BoxChatController