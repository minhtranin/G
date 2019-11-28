'use strict'

/** 
*  @swagger
*  definitions:
*    PromotionUpdate:
*      type: object
*      properties:
*        id:
*          type: unit
*          example : 1
*        title:
*          type: string
*          example : "Discount 20% For all product"
*        description:
*          type: string
*          example : "<p>Discount 20% For all product</p>"
*        start_date:
*          type: string
*          example : "2019-08-01 10:09:09"
*        end_date:
*          type: string
*          example : "2019-08-30 10:09:09"
*        value:
*          type: uint
*          example : 10
*        type_value:
*          type: string
*          example : "price or percent"
*      required:
*/
class PromotionUpdate{

}
module.exports = PromotionUpdate