'use strict'
/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */
const Doctor        = use('TTSoft/Docter/Models/Doctor')
class DoctorAuthorization {
  /**
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Function} next
   */
  async handle ({ request }, next) {
    // call next to advance the request
   
    console.log('this is a middleware')

    await next()
  }
}

module.exports = DoctorAuthorization
