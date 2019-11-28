'use strict'

const Env = use('Env')
const BankAccount = use('App/Models/BankAccount')
const {
  getCurrentCustomer ,
  getChildCustomerTree ,
  showTreeChildrenCustomer
} = use('App/Libraries/TraitsHelpers')

class BankAccountController {

/**
   * @swagger
   * /api/v1/bank/list:
   *   get:
   *     tags:
   *       - FE_BankAccount
   *     security:
   *       - Bearer: []
   *     summary: Wallet deposit
   *     description: "Bank Account List"
   *     produces:
   *       - application/json
   *     responses:
   *       200:
   *         description: Server OK!
   */
    async list ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        const listBankAccount = await BankAccount.query().where('customer_id',customer.id).fetch()
        return response.respondWithSuccess(listBankAccount, "List Account Bank Successful!")
    }
/**
   * @swagger
   * /api/v1/bank/create:
   *   post:
   *     tags:
   *       - FE_BankAccount
   *     summary: Bank Account List
   *     security:
   *       - Bearer: []
   *     description: Bank Account List
   *     parameters:
   *       - name: data
   *         description: vank Account List
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/CreateNewBankAccount'
   *     produces:
   *       - application/json
   *     responses:
   *       200:
   *         description: Server OK!
   */
    async create ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        const bank_account = new BankAccount()
        bank_account.account_name     = data.account_name
        bank_account.account_number   = data.account_number
        bank_account.account_address  = data.account_address
        bank_account.account_code     = data.account_code
        bank_account.customer_id      = customer.id
        await bank_account.save()
        /* SEND MAIL */
        let constTemplateId = use('TemplateId').TEMPLATE_ORDER_NEW;
        const ModelSendGird = await use('ModelSendGird').findSlugTemplate(constTemplateId);
        var userData = {
          toEmail : "minhtran.in@outlook.com",
          // templateId : ModelSendGird.template_id,
          templateData : ModelSendGird,
          // cc : ModelSendGird.to_email,
          drawData : {
            full_name  : data.account_name, //user.getFullNameAttribute(),
            orderCode : data.account_number,
            orderValue : data.account_address,
          }
        }
        const  sendGird = await use('SendGird').sendMail(userData)


        return response.respondWithSuccess(bank_account, 'Create New Bank Account Successful!')

    }

    /**
     * @swagger
     * /api/v1/bank/update:
     *   post:
     *     tags:
     *       - FE_BankAccount
     *     summary: Bank Account Create
     *     description: Bank Account Create
     *     security:
     *       - Bearer: []
     *     parameters:
     *       - name: data
     *         description: Bank Account Create
     *         in:  body
     *         required: true
     *         type: string
     *         schema:
     *           $ref: '#/definitions/UpdateNewBankAccount'
     *     produces:
     *       - application/json
     *     responses:
     *       200:
     *         description: Server OK!
     */
    async update ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        const bank_account = await BankAccount.find(data.id)
        if (!bank_account) {
          return response.respondWithError(data,'Cant not found ID bank!')
        }
        bank_account.account_name     = data.account_name
        bank_account.account_number   = data.account_number
        bank_account.account_address  = data.account_address
        bank_account.account_code     = data.account_code
        bank_account.customer_id      = data.customer_id
        bank_account.save()

        /* SEND MAIL */
        let constTemplateId = use('TemplateId').TEMPLATE_ORDER_NEW;
        const ModelSendGird = await use('ModelSendGird').findSlugTemplate(constTemplateId);
        var userData = {
          toEmail : "minhtran.in@outlook.com",
          // templateId : ModelSendGird.template_id,
          // cc : ModelSendGird.to_email,    // to_email fr db.sendgrid
          templateData : ModelSendGird,
          drawData : {

            full_name  : data.account_name, //user.getFullNameAttribute(),
            orderCode : data.account_number,
            orderValue : data.account_address,
          }
        }
        const  sendGird = await use('SendGird').sendMail(userData)

        return response.respondWithSuccess(data,'Update Bank Account Successful!')
    }

    /**
     * @swagger
     * /api/v1/bank/delete:
     *   get:
     *     tags:
     *       - FE_BankAccount
     *     security:
     *       - Bearer: []
     *     summary: Wallet deposit
     *     description: Bank Account Delete
     *     produces:
     *       - application/json
     *     parameters:
     *       - name: id
     *         description: ID
     *         in: query
     *         required: true
     *         type: string
     *     responses:
     *       200:
     *         description: Server OK!
     */
    async delete ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        const bank_account = await BankAccount.find(data.id)
        if (!bank_account) {
          return response.respondWithError(data,'Cant not found ID bank!')
        }
        bank_account.delete()
        return response.respondWithSuccess([],'Delete bank Successful!')
    }


}
module.exports = BankAccountController
