'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Doctor extends Model {
    static table(){
        return 'doctors'
    }
    static primaryKey(){
        return 'id'
    }
}

module.exports = Doctor
