'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')
Route.group(() => {
  Route.post('/register','@provider:Doctor/DoctorController.register')
  Route.post('/login','@provider:Doctor/DoctorController.login').middleware(['doctorAuth'])
  Route.get('/verifyEmail/:uid','@provider:Doctor/DoctorController.verifyEmail').as('verifyEmail')
})
.prefix('api/v1/doctor')


