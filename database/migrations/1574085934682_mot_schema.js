'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class MotSchema extends Schema {
  up () {
    this.create('mots', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('mots')
  }
}

module.exports = MotSchema
