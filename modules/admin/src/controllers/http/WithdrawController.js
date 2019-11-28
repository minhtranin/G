'use strict'

const Env = use('Env')
const Withdraw = use('App/Models/Withdraw')
const Customer = use('App/Models/Customer')
const {
  getCurrentCustomer , 
  getChildCustomerTree , 
  showTreeChildrenCustomer
} = use('App/Libraries/TraitsHelpers')
const Helpers = use('Helpers')
const HelperLibraries = use('App/Libraries/Helpers')
class WithdrawController {
/**
   * @swagger
   * /api/v1/admin/withdraw/approve:
   *   post:
   *     tags:
   *       - AdminWithdraw
   *     summary: Withdraw account
   *     security:
   *       - Bearer: []
   *     parameters:
   *       - name: id
   *         description: ID
   *         in: query
   *         required: false
   *         type: unit
   *         example : 1
   *       - in: formData
   *         name: file_transaction
   *         type: file
   *         description: The file to upload.
   *       - name: note
   *         description: 'Note'
   *         in: query
   *         required: false
   *         type: string
   *         example : "OK"
   *       - name: status
   *         description: 'completed | pending | failed'
   *         in: query
   *         required: false
   *         type: string
   *         example : "completed"
   *     description: Withdraw
   *     produces:
   *       - application/json
   *     responses:
   *       200:
   *         description: Server is OK!
   */
  	async approveWithdraw ({request, response }) {
        var data = request.all()
        const withdraw = await Withdraw.query().with('customer').where('id',data.id).first()
        if (withdraw.amount > withdraw.customer.commissions_earned) {
        	return response.respondWithError('Request withdraw failed. Currently amount commissions not enough!')
        }
        const customer = await Customer.query().where('id',withdraw.customer_id).first()
        var date_completed = new Date().toISOString().slice(0,10) + " " + new Date().toISOString().slice(11, 19)
        const profilePic = request.file('file_transaction', {
            types: ['image'],
            size: '2mb'
        })
        if (profilePic != null) {
              await profilePic.move(Helpers.publicPath('uploads/withdraws'), {
                  name: `${HelperLibraries.strString(withdraw.code)}${new Date().getTime()}.${profilePic.subtype}`,
                  overwrite: true
              })
              if (!profilePic.moved()) {
                  return response.respondWithError('Validation is failed', profilePic.error())
              }
        }
        withdraw.date_completed   = date_completed
        if (profilePic != null) {
              withdraw.file_transaction   = '/uploads/withdraws/' + profilePic.fileName
        }
        withdraw.note = data.note
        withdraw.status = data.status
        withdraw.save()
        /* set amount customer */
        customer.commissions_earned = customer.commissions_earned - withdraw.amount;
        customer.save();
        return response.respondWithSuccess(withdraw , 'Approved this request withdraw successful!')
  	}
  	/**
	   * @swagger
	   * /api/v1/admin/withdraw/list:
	   *   get:
	   *     tags:
	   *       - AdminWithdraw
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
        const withdraws = await Withdraw.query().with('customer').orderBy('id','DESC').fetch()
        return response.respondWithSuccess(withdraws)
  	}
}
module.exports = WithdrawController
