'use strict'

/** 
*  @swagger
*  definitions:
*    PromotionCreate:
*      type: object
*      properties:
*        title:
*          type: string
*          example : "Discount 20% For all product"
*        code:
*          type: string
*          example : "ICBDC20190806"
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
class PromotionCreate{

}
module.exports = PromotionCreate