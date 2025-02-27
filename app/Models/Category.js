'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Category extends Model {
    static get table(){
        return 'categorys'
    }
    static get createdAtColumn(){
        return 'created_at'
    }
    static get updatedAtColumn(){
        return 'updated_at'
    }
}

module.exports = Category
