const mail = 'a,b,c,a,d,d,d,a,m,i,j,d,t,t,a,a,c,b,y,z,y,z'
const arrMail =  mail.split(',')
//const a = arrMail.length
for (let i = 0; i < 2; i++) {
    for (let i = 0; i < arrMail.length - 1; i++) {
        for (let j = i + 1; j < arrMail.length; j++) {
            if (arrMail[j] == arrMail[i]) {
                arrMail.splice(j, 1)
            }
        }
    }
}
console.log(arrMail)

