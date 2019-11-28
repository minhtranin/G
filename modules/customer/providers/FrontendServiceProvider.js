'use strict'

const { ServiceProvider } = require('@adonisjs/fold')
const Helpers = use('Helpers')
const edge = require('edge.js')
const path = require('path')

class FrontendServiceProvider extends ServiceProvider {
	_registerRoutes(){
  	this.app.autoload(path.join(__dirname, '../src/controllers/http/'), 'Frontend');
	}

  	register () {
  		this._registerRoutes()
  	}

  	boot () {
  		require('../src/routes.js')
  	}
}

module.exports = FrontendServiceProvider