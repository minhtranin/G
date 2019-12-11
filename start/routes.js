'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.group(() => {
  Route.get('/login','AuthController.index')
})
.prefix('auth')
.namespace('Admin')

Route.group(() => {
	Route.post('/eth-transferGas','UserController.transferGas')
  	Route.post('/eth-transfer','UserController.transfer')
  	Route.post('/eth-create','UserController.createWallet')
  	Route.get('/eth-balance','UserController.balance')
  	Route.get('/eth-hash','UserController.hash')
  	Route.get('/eth-transactions','UserController.transactions')
  	Route.get('/eth-block','UserController.block')
})
.prefix('api')
.namespace('Admin')


Route.get('/secretAPIv1GCOMJACK', ({ response }) => {
  response.redirect('/docs')
})


Route.get('/payment/res',({request,response})=>{
		 const data = request.all()
		var vnp_Params = request.all();
		//vnp_TxnRef
		var secureHash = vnp_Params['vnp_SecureHash'];
	
		delete vnp_Params['vnp_SecureHash'];
		delete vnp_Params['vnp_SecureHashType'];
	
		vnp_Params = sortObject(vnp_Params);
	
		
		var tmnCode = "EF1YI58G";
		var secretKey = "YVXFLXICKWAQEDPXKQUHWSIVFHSZICWY";    
	
		var querystring = require('qs');
		var signData = secretKey + querystring.stringify(vnp_Params, { encode: false });
	
		var sha256 = require('sha256');
	
		var checkSum = sha256(signData);
		var mysql = require('mysql');
		var con = mysql.createConnection({
			host: "78.47.173.149",
			user: "minh",
			password: "songlong",
			database: "motelmanager"
		  });
		if(secureHash === checkSum){
			//Kiem tra xem du lieu trong db co hop le hay khong va thong bao ket qua
			con.connect(function(err) {
				if (err) throw err;
				var sql3= `UPDATE 'motelmanager'.'transaction' SET 'status' = '1' WHERE ('id' = '${data.vnp_TxnRef});`
				//var sql = `insert into transaction (room,amount,timestamp,content) values ('${data.vnp_TxnRef}','${data.vnp_Amount}','${data.vnp_BankTranNo}','${data.vnp_OrderInfo}');`
				//var sql2 = `select *from transaction where room = ${data.vnp_TxnRef}`
				con.query(sql3, function(err, results) {
				  if (err) throw err;
				  console.log(results)
				  
				})
			  });
	
		   	return	response.send('payment successful')
		}
		return response.send('error, info payment incorrect')
	
	


	
})
function sortObject(o) {
	var sorted = {},
		key, a = [];

	for (key in o) {
		if (o.hasOwnProperty(key)) {
			a.push(key);
		}
	}

	a.sort();

	for (key = 0; key < a.length; key++) {
		sorted[a[key]] = o[a[key]];
	}
	return sorted;
}