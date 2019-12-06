'use strict'
class BoxChatController {
    /**
   * @swagger
   * api/v1/customer/box-chat/create:
   *   put:
   *     tags:
   *       - Customer Chat
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
    async create({request,response}){
        const data = request.all()
        return response.respondWithSuccess('ok')
    }
}
module.exports =BoxChatController