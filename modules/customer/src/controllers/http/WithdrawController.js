'use strict'

const Env = use('Env')
const Withdraw = use('App/Models/Withdraw')
const {
  getCurrentCustomer , 
  getChildCustomerTree , 
  showTreeChildrenCustomer
} = use('App/Libraries/TraitsHelpers')

class WithdrawController {
/**
   * @swagger
   * /api/v1/request-withdraw:
   *   post:
   *     tags:
   *       - FE_Withdraw
   *     summary: Withdraw account
   *     security:
   *       - Bearer: []
   *     parameters:
   *       - name: data
   *         description: vank Account List
   *         in:  body
   *         required: true
   *         type: string
   *         schema:
   *           $ref: '#/definitions/RequestWithdraw'
   *     description: Withdraw
   *     produces:
   *       - application/json
   *     responses:
   *       200:
   *         description: Server is OK!
   */
  	async requestWithdraw ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        if (data.amount > customer.commissions_earned) {
        	return response.respondWithError('Request withdraw failed. Currently amount commissions not enough!')
        }
        const withdraw = new Withdraw()
        withdraw.customer_id = customer.id
        withdraw.code = 'ICBWD'
        withdraw.amount = data.amount
        withdraw.note = data.note
        withdraw.account_name = data.account_name
        withdraw.account_number = data.account_number
        withdraw.account_code = data.account_code
        withdraw.account_address = data.account_address
        withdraw.payment_withdraw = 'request_customer'
        withdraw.status = 'pending'
        await withdraw.save()
        var str = "" + withdraw.id
        var converId = "00000"
        withdraw.code = withdraw.code + converId.substring(0, converId.length - str.length) + str
        withdraw.save()
        return response.respondWithSuccess(withdraw , 'Request withdraw successful. Please wait to admin approve!')
  	}
  	/**
	   * @swagger
	   * /api/v1/list-withdraw:
	   *   get:
	   *     tags:
	   *       - FE_Withdraw
	   *     summary: Withdraw account
	   *     security:
	   *       - Bearer: []
	   *     description: Withdraw
	   *     produces:
	   *       - application/json
	   *     responses:
	   *       200:
	   *         description: Server is OK!
	   */
  	async listWithdraw ({request, response }) {
        var data = request.all()
        const customer = await getCurrentCustomer(request.header('Authorization'))
        const withdraws = await Withdraw.query().where('customer_id',customer.id).orderBy('id','DESC').fetch()
        return response.respondWithSuccess(withdraws)
  	}
}
module.exports = WithdrawController
