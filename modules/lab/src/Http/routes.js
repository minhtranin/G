'use strict'

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')
Route.group(() => {

  Route.get('/list','@provider:Lab/LabController.getList')          //edited
  	.middleware(['permission:salePackageView'])

  Route.post('/create','@provider:Lab/LabController.postCreateLab') // edited
  	.middleware(['permission:salePackageCreate'])

  Route.get('/find','@provider:Lab/LabController.findProduct')      //
  	.middleware(['permission:salePackageUpdate'])

  Route.put('/update','@provider:Lab/LabController.update')         //
  	.middleware(['permission:salePackageUpdate'])

  Route.delete('/delete','@provider:Lab/LabController.delete')      //
  	.middleware(['permission:salePackageDelete'])
})
.middleware(['adminAuthApi'])
.prefix('api/v1/lab')


Route.get('/routeTest','@provider:Lab/LabController.routeTest')  // route test


