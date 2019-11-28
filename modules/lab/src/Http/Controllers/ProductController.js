'use strict'

const Mail = use('Mail')
const path = require('path')
const Env = use('Env')
const ProductServices       = use('TTSoft/Product/Services/ProductServices')
const ProductTransfomer     = use('TTSoft/Product/Transformers/ProductTransfomer')
class ProductController {

      constructor() {
          this.productTransfomer    = ProductTransfomer
          this.productService       = ProductServices;
      }
      
      async getList ({request, response }) {
            const products = await this.productService.getList();
            const dataTransformers = this.productTransfomer.transformCollection(products);
            return response.respondWithSuccess(dataTransformers , 'List Product Successful!');
      }

      
      async postCreateProduct ({request, response }) {
            var data = request.all()
            const product = await this.productService.createNewProduct(data)
            const dataTransformer = this.productTransfomer.transform(product);
            return response.respondWithSuccess(dataTransformer , 'Create New a Product Successful!')
      }

      
      async findProduct ({request, response }) {
            var data = request.all()
            const product = await this.productService.findProduct(data.id);
            if (product) {
                  const dataTransformers = this.productTransfomer.transform(product);
                  return response.respondWithSuccess(dataTransformers , 'Get a Product Successful!');
            }
            return response.respondWithError('The Not Found Product ID!');
      }

      
      async update ({request, response }) {
            var data = request.all()
            const product = await this.productService.updateProduct(data)
            if (product) {
                  const dataTransformer = this.productTransfomer.transform(product);
                  return response.respondWithSuccess(dataTransformer , 'Updated a Product Successful!')
            }
            return response.respondWithError('The Not Found Product ID!')            
      }

     
      async delete ({request, response }) {
            var data = request.all()
            const product = await this.productService.deleteProduct(data.id);
            if (product) {
                  return response.respondWithSuccess([] , 'Delete a Product Successful!');
            }
            return response.respondWithError('The Not Found Product ID!');
      }
}
module.exports = ProductController
