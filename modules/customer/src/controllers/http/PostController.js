'use strict'


class PostController{
/**
      * @swagger
      * /api/v1/customer/post/create:
      *   post:
      *     tags:
      *       - Customer Post 
      *     summary: Create account
      *     consumes:
      *       - multipart/form-data
      *     security:
      *       - Bearer: []
      *     produces:
      *       - application/json
      *     parameters:
     *       - in: formData
      *         name: avatar
      *         type: file
      *         description: The file image to upload.
      *       - name: fullname 
      *         description: fullname 
      *         in:  query
      *         required: true
      *         type: string
      *         example: "TCM"
      *       - name: username 
      *         description: your username
      *         in:  query
      *         type: string
      *         example: "minhtranin"
      *       - name: email 
      *         description: your email account
      *         in:  query
      *         type: string
      *         example: "minhtc97@gmail.com"
      *       - name: password 
      *         description: password account
      *         in:  query
      *         type: string
      *         example: "123456"
      *       - name: phone_number 
      *         description: phone account
      *         in:  query
      *         type: string
      *         example: "0971725797"
      *          
      *     responses:
      *       200:
      *         description: Add account Successful
      */
    async create({request,response}){
        const data = request.all()
        return response.respondWithSuccess('ok')
    }
    /**
   * @swagger
   * api/v1/customer/post/update:
   *   put:
   *     tags:
   *       - Customer Post
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
    async update({request,response}){
        const data = request.all()
        return response
    }
    /**
   * @swagger
   * api/v1/customer/post/delete:
   *   delete:
   *     tags:
   *       - Customer Post
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
    async delete({request,response}){
        const data = request.all()
        return response
    }
    /**
   * @swagger
   * api/v1/customer/post/react:
   *   get:
   *     tags:
   *       - Customer Post
   *     summary: User Logout
   *     security:
   *       - Bearer: []
   *     responses:
   *       200:
   *         description: User Logout
   */
    async react({request,response}){
        const data = request.all()
        return response
    }
    /**
   * @swagger
   * api/v1/customer/post/category/list:
   *   get:
   *     tags:
   *       - Customer Post
   *     summary: list post category
   *     responses:
   *       200:
   *         description: show all list post category
   */
    async categoryList({request,response}){
        const data = request.all()
        return response
    }
/**
   * @swagger
   * api/v1/customer/post/features/list:
   *   get:
   *     tags:
   *       - Customer Post
   *     summary: list post features
   *     responses:
   *       200:
   *         description: show all list post features
   */
  async featuresList({request,response}){
    const data = request.all()
    return response.respondWithSuccess('ok')
}
/**
   * @swagger
   * api/v1/customer/post/condition/list:
   *   get:
   *     tags:
   *       - Customer Post
   *     summary: list post condition
   *     responses:
   *       200:
   *         description: show all list post condition
   */
  async conditionList({request,response}){
    const data = request.all()
    return response.respondWithSuccess('ok')
}
    
}
module.exports = PostController