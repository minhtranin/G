var firebase = require("firebase")
const FirebaseConfig = {
    ApiKey: "AIzaSyAaeyHDAiEzjf3ydpoYIsc3YMae8hAMO-s,",
    AuthDomain: "Gcom-7eca5.firebaseapp.com",
    DatabaseURL: "Https://gcom-7eca5.firebaseio.com",
    ProjectId: "Gcom-7eca5", StorageBucket: "gcom-7eca5.appspot.com",
    messagingSenderId: "261.812.782.005",
    AppID: "1: 261.812.782.005: web: b7b56aa84f7a7bec10cffc",
    measurementId: "G-8YFE1XLXZD "
}
firebase.initializeApp(firebaseConfig);
var database = firebase.database();
function writeUserData(userId, name, email, imageUrl) {
    firebase.database().ref('gcom-7eca5/' + userId).set({
      username: name,
      email: email,
      profile_picture : imageUrl
    });
  }