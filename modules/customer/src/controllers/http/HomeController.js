'use strict'
class HomeController{
    /**
   * @swagger
   * /api/v1/customer/home:
   *   get:
   *     tags:
   *       - Home
   *     summary: Home View
   *     responses:
   *       200:
   *         description: Home view
   */
        async home({request,response}){
            return response.respondWithSuccess('ok')
        }
            /**
   * @swagger
   * /api/v1/customer/feed:
   *   get:
   *     tags:
   *       - Home
   *     summary: Feed View
   *     responses:
   *       200:
   *         description: Feed view
   */
  async feed({request,response}){
    return response.respondWithSuccess('ok')
}
  /**
   * @swagger
   * /api/v1/customer/notication:
   *   get:
   *     tags:
   *       - Home
   *     summary: notication view
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: notication view successful
   */
}
module.exports = HomeController