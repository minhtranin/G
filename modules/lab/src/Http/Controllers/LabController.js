'use strict'

const UserToken = use('App/Models/UserToken')
//const Database = use('Database')
const Lab = use('TTSoft/Lab/Models/Lab')

class LabController{
    /**
      * @swagger
      * /api/v1/lab/create:
      *   post:
      *     tags:
      *       - LAB_Auth
      *     summary: Create New a Lab
      *     security:
      *       - Bearer: []
      *     parameters:
      *       - name: info
      *         description: Lab Object Value
      *         in:  body
      *         required: true
      *         type: string
      *         schema:
      *           example : {
      *              title : 'Lab 01',
      *              description : 'this is a LabVip'
      *           }
      *     responses:
      *       200:
      *         description: Server is OK!
      *       500:
      *         description: Error Server Internal!
      */
    async postCreateLab({request, response}) {
        var bearer = request.header('Authorization')
        bearer = bearer.replace("Bearer", "")
        const userToken = await UserToken.query().where('access_token',bearer).first()
        if (userToken) {
            // create lab
            const data = request.all()
            const lab = new Lab()
            lab.title       =  data.title
            lab.description =  data.description = null ? "" : data.description
            await lab.save()
            const thisLab = await Lab.query().where('title',lab.title).first()
            return response.respondWithSuccess(thisLab.toJSON() , 'Create New Lab Successfull!')
          }
        return response.respondWithError('Your token invalid!')
    }
    async routeTest({request,response}){
            
            const lab = new Lab()
            lab.title = "one"   // data.title
            lab.title = "two"        //data.description = null ? "" : data.description
            await lab.save()
            const thisLab = await Lab.query().where('title',lab.title).first()
            return response.respondWithSuccess(thisLab.toJSON() , 'Create New Lab Successfull!')
    }
    /**
      * @swagger
      * /api/v1/lab/list:
      *   get:
      *     tags:
      *       - LAB_Auth
      *     summary: List Labs
      *     security:
      *       - Bearer: []
      *     responses:
      *       200:
      *         description: Server is OK!
      *       500:
      *         description: Error Server Internal!
      */
     async getList ({request, response }) {
      var bearer = request.header('Authorization')
      bearer = bearer.replace("Bearer", "")
      const userToken = await UserToken.query().where('access_token',bearer).first()
      if (userToken) {
          // create lab
          const thisLab = await Lab.query().fetch()
          return response.respondWithSuccess(thisLab.toJSON() , 'List Lab Successfull!')
        }
      return response.respondWithError('Your token invalid!')
      
}
      /**
      * @swagger
      * /api/v1/lab/find:
      *   get:
      *     tags:
      *       - LAB_Auth
      *     summary: Find a Lab
      *     security:
      *       - Bearer: []
      *     parameters:
      *       - name: id
      *         description: ID Product
      *         in: query
      *         required: false
      *         type: unit
      *         example : 1
      *     responses:
      *       200:
      *         description: Server is OK!
      *       500:
      *         description: Error Server Internal!
      */
    async findProduct ({request,response}){
      const {id} = request.all()
      const lab = await Lab.query().where('id',id).first()
      if(lab){
        return response.respondWithSuccess(lab.toJSON() , 'Get a Product Successful!!')
      }
      return response.respondWithError('The Not Found Product ID!');
    }
    /**
      * @swagger
      * /api/v1/lab/update:
      *   put:
      *     tags:
      *       - LAB_Auth
      *     summary: Update a Lab.
      *     security:
      *       - Bearer: []
      *     parameters:
      *       - name: info
      *         description: Lab Object Value
      *         in:  body
      *         required: true
      *         type: string
      *         schema:
      *           example : {
      *              id : 1,
      *              title : 'Lab 04',
      *              description : 'This is a business Lab'
      *           }
      *     responses:
      *       200:
      *         description: Server is OK!
      *       500:
      *         description: Error Server Internal!
      */
    async update ({request,response}){
      const data = request.all()
      let lab = await Lab.query().where('id',data.id).first()
      if(!lab) return response.respondWithError('The Not Found Lab ID!')

        await Lab.query().where('id',data.id).update(data)
        lab   = await Lab.query().where('id',data.id).first()
      return response.respondWithSuccess(lab.toJSON() , 'Get a Lab Successful!!')
      
    }
     /**
      * @swagger
      * /api/v1/lab/delete:
      *   delete:
      *     tags:
      *       - LAB_Auth
      *     summary: Delete a Lab
      *     security:
      *       - Bearer: []
      *     parameters:
      *       - name: id
      *         description: ID Lab
      *         in: query
      *         required: false
      *         type: unit
      *         example : 1
      *     responses:
      *       200:
      *         description: Server is OK!
      *       500:
      *         description: Error Server Internal!
      */ async delete ({request,response}){
      const data = request.all()
      let lab = await Lab.query().where('id',data.id).first()
      if(!lab) return response.respondWithError('The Not Found Lab ID!')

        await Lab.query().where('id',data.id).delete()
        lab   = await Lab.query().where('id',data.id).first()
      return response.respondWithSuccess([] , 'Delete a Lab Successful!')
      
    }


}
module.exports = LabController