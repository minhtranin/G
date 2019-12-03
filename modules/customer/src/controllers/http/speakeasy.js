const speakeasy = require('speakeasy')
const secret = speakeasy.generateSecret({length: 20}).base32;
//console.log(secret)
const s = 'KQZHMTSLOY4CYU3TOA2GETJDEZCXUV3B'
//  var token = speakeasy.totp({
//      secret: secret,
//      encoding: 'base32'
//    });
//    console.log(token)
//    console.log(secret)
  var tokenValidates = speakeasy.totp.verify({
    secret: 'KQZHMTSLOY4CYU3TOA2GETJDEZCXUV3B',
    encoding: 'base32',
    token: '374113',
    window: 6
  });
  console.log(tokenValidates)