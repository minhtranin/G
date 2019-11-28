'use strict'

const Env = use('Env')
const Mail = use('Mail')
const path = require('path')
const Promotion = use('App/Models/Promotion')
const MessageCode = use('App/Libraries/MessageCode')
const Database = use('Database')
const { validate } = use('Validator')
const Hash = use('Hash')
const speakeasy = require('speakeasy')
const Helpers = use('Helpers')
const HelperLibraries = use('App/Libraries/Helpers')
class PromotionController {
	/**
  	* @swagger
  	* /api/v1/admin/promotion/list:
  	*   get:
  	*     tags:
  	*       - AdminPromotion
  	*     summary: List Promotion
  	*     security:
  	*       - Bearer: []
  	*     responses:
  	*       200:
  	*         description: Promotion List
  	*/
  	async list ({request, response }) {
        var data = request.all()
        const promotion = await Promotion.all()
        return response.respondWithSuccess(promotion , 'List Promotion Successful!')
  	}
  	/**
       * @swagger
       * /api/v1/admin/promotion/create:
       *   post:
       *     tags:
       *       - AdminPromotion
       *     summary: Create Promotion Admin
       *     consumes:
       *       - multipart/form-data
       *     description: Create Promotion Admin
       *     security:
       *       - Bearer: []
       *     produces:
       *       - application/json
       *     parameters:
       *       - name: info
       *         description: Create Promotion Admin
       *         in:  body
       *         required: true
       *         type: string
       *         schema:
       *           $ref: '#/definitions/PromotionCreate'   
       *     responses:
       *       200:
       *         description: Create Promotion Admin
       */
    async create ({request, response }) {
      	var data = request.all()
        const rules = {
          title: 'required',
          value: 'required',
          code: 'required|unique:promotions,code',
        }
        const validation = await validate(data, rules)
        if (validation.fails()) {
          return response.respondWithError('Validation is failed!', validation.messages())
        }
        const trx = await Database.beginTransaction()
        const promotion           = new Promotion()
        promotion.title   	      = data.title
        promotion.code        	  = data.code
        promotion.start_date 	    = data.start_date
        promotion.end_date      	= data.end_date
        promotion.type     	      = 'totalorder'
        promotion.value      	    = data.value
        promotion.type_value      = data.type_value
        promotion.description     = data.description
        promotion.status          = 1
        await promotion.save(trx)
        trx.commit()
        return response.respondWithSuccess(promotion , 'Add Customer Successful!')
    }

      /**
      * @swagger
      * /api/v1/admin/promotion/edit:
      *   get:
      *     tags:
      *       - AdminPromotion
      *     summary: Edit Promotion
      *     security:
      *       - Bearer: []
      *     parameters:
      *       - name: id
      *         description: Edit Promotion
      *         in: query
      *         required: true
      *         type: string
      *     responses:
      *       200:
      *         description: Edit Promotion
      */
      	async edit ({params , request, response }) {
          var data = request.all()
          const promotion = await Promotion.find(data.id)
          if (!promotion) {
                return response.respondWithError('Not found id Promotion!')
          }
          return response.respondWithSuccess(promotion , 'Get Id Promotion Successful!')
      	}
    /**
       * @swagger
       * /api/v1/admin/promotion/update:
       *   post:
       *     tags:
       *       - AdminPromotion
       *     summary: Update Promotion Admin
       *     consumes:
       *       - multipart/form-data
       *     description: Update Promotion Admin
       *     security:
       *       - Bearer: []
       *     produces:
       *       - application/json
       *     parameters:
       *       - name: info
       *         description: Create Promotion Admin
       *         in:  body
       *         required: true
       *         type: string
       *         schema:
       *           $ref: '#/definitions/PromotionUpdate'   
       *         
       *     responses:
       *       200:
       *         description: Update Promotion Sucessfull!
       */
  	async update ({request, response }) {
  		var data = request.all()
      const promotion = await Promotion.find(data.id)
      const rules = {
        title: 'required',
        value: 'required',
      }
      const validation = await validate(data, rules)
      if (validation.fails()) {
        return response.respondWithError('Validation is failed!', validation.messages())
      }
      const trx = await Database.beginTransaction()
      promotion.title           = data.title
      promotion.start_date      = data.start_date
      promotion.end_date        = data.end_date
      promotion.type            = 'totalorder'
      promotion.value           = data.value
      promotion.type_value      = data.type_value
      promotion.description     = data.description
      promotion.status          = 1
      await promotion.save(trx)
      trx.commit()
      return response.respondWithSuccess(promotion , 'Update Customer Successful!')
  	}


      	/**
	      * @swagger
	      * /api/v1/admin/promotion/delete:
	      *   get:
	      *     tags:
	      *       - AdminPromotion
	      *     summary: Delete 
	      *     security:
	      *       - Bearer: []
	      *     parameters:
	      *       - name: id
	      *         description: ""
	      *         in: query
	      *         required: true
	      *         type: string
	      *     responses:
	      *       200:
	      *         description: Delete successfull!
	      */
      	async delete ({request, response }) {
          var data = request.all()
          const promotion = await Promotion.find(data.id)
          if (!promotion) {
                return response.respondWithError('Not found id promotion!')
          }
          promotion.delete()
          return response.respondWithSuccess([] , 'Delete Customer promotion!')
      	}
}
module.exports = PromotionController
