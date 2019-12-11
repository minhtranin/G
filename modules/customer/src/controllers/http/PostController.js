'use strict'
const Category = use("App/Models/Category");
const Condition = use("App/Models/Condition");
const Feature = use("App/Models/Feature");
const Post = use ('App/Models/Post')
const Helpers = use('Helpers')
const AmazonS3 = use('AmazonS3')
const Customer = use('App/Models/Customer')

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
      *         name: images
      *         type: file[]
      *         description: The  image post
      *       - name: title 
      *         description: title post
      *         in:  query
      *         required: true
      *         type: string
      *         example: "BMW i3"
      *       - name: description 
      *         description: description post
      *         in:  query
      *         type: string
      *         example: "the new car"
      *       - name: id_category 
      *         description: id_category from api categort list
      *         in:  query
      *         type: interger
      *         example: 1
      *       - name: id_features 
      *         description: id features from api categort list
      *         in:  query
      *         type: interger
      *         example: 1
      *       - name: id_condition 
      *         description: id condition from api categort list
      *         in:  query
      *         type: interger
      *         example: 1
      *       - name: price 
      *         description: price this products 
      *         in:  query
      *         type: interger
      *         example: 1
      *       - name: location 
      *         description: location this post 
      *         in:  query
      *         type: string
      *         example: '32:12'
      *       - name: type_post 
      *         description: type of post  0 urgent 1 featured 2 regular
      *         in:  query
      *         type: interger
      *         example: 2
      *       - name: to_exchange 
      *         description: type of post exchange 0 not 1
      *         in:  query
      *         type: interger
      *         example: 1
      *          
      *     responses:
      *       200:
      *         description: Add post Successful
      */
    async create({request,response}){
        const data = request.all()
        const checkIDCategory = await Category.find(data.id_category)
        const checkIDFeatured = await Feature.find(data.id_features)
        const checkIDCondition = await Condition.find(data.id_condition)
        if(!checkIDCategory ){
            return response.respondWithError('id category not exist')
        }else if(!checkIDCondition){
            return response.respondWithError('id condition not exist')
        }else if (!checkIDFeatured){
            return response.respondWithError('id featured not exist')
        }
        const profilePics = request.file('images', {
            types: ['image'],
            size: '2mb'
          })
        if(profilePics){
          await profilePics.moveAll(Helpers.tmpPath('uploads'), (file) => {
            return {
              name: `${new Date().getTime()}/${new Date().getTime()}.${file.subtype}`
            }
          })
        
          if (!profilePics.movedAll()) {
            return response.respondWithError('Validation is failed', profilePic.error())
          }
          if (profilePics != null) {
            data.images =  profilePics.fileName
        }
    }
        const post =await Post.create(data)
        return response.respondWithSuccess(post.toJSON(),'Add post Successful')
    }
    /**
   * @swagger
   * /api/v1/customer/post/update:
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
      async update({ request, response }) {
        
        
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
   * api/v1/customer/post/like/create:
   *   post:
   *     tags:
   *       - Customer Post
   *     summary: like create
   *     security:
   *       - Bearer: []
    *     parameters:
    *       - name: data
    *         description: message inbox
    *         in:  body
    *         required: true
    *         type: json
    *         schema:
    *           $ref: '#/definitions/likecreate'
   *     responses:
   *       200:
   *         description: liked 
   */
    async createLike({request,response}){
        const data = request.all()
        return response
    }
    /**
   * @swagger
   * api/v1/customer/post/comment/create:
   *   post:
   *     tags:
   *       - Customer Post
   *     summary: Comment create
     *     security:
   *       - Bearer: []
    *     parameters:
    *       - name: data
    *         description: message inbox
    *         in:  body
    *         required: true
    *         type: json
    *         schema:
    *           $ref: '#/definitions/Commentcreate'
   *     responses:
   *       200:
   *         description: show list like 
   */
  async createComment({request,response}){
    const data = request.all()
    return response
}
    /**
   * @swagger
   * api/v1/customer/post/share/create:
   *   post:
   *     tags:
   *       - Customer Post
   *     summary: Share Create
     *     security:
   *       - Bearer: []
    *     parameters:
    *       - name: data
    *         description: share create
    *         in:  body
    *         required: true
    *         type: json
    *         schema:
    *           $ref: '#/definitions/Sharecreate'
   *     responses:
   *       200:
   *         description: commented
   */
  async createShare({request,response}){
    const data = request.all()
    return response
}
    /**
   * @swagger
   * /api/v1/customer/post/category/list:
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
        const category =await Category.query().fetch()
        return response.respondWithSuccess(category.toJSON(),'show all list post category')
    }
/**
   * @swagger
   * /api/v1/customer/post/features/list:
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
        const features =await Feature.query().fetch()
        return response.respondWithSuccess(features.toJSON(),'show all list post features')
}
/**
   * @swagger
   * /api/v1/customer/post/condition/list:
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
    const condition =await Condition.query().fetch()
        return response.respondWithSuccess(condition.toJSON(),'show all list post features')
}
    
}
module.exports = PostController