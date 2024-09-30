
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.2/firebase-app.js";
import { getFirestore, collection, getDocs } from "https://www.gstatic.com/firebasejs/10.12.2/firebase-firestore.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyCDVwo5v9O-OA50AxfPnvF7otkI-18lT_o",
    authDomain: "resume-firebase-92287.firebaseapp.com",
    projectId: "resume-firebase-92287",
    storageBucket: "resume-firebase-92287.appspot.com",
    messagingSenderId: "6998509593",
    appId: "1:6998509593:web:5863e96d6e68a70b08c288",
    measurementId: "G-ZPP4XLMLYW"
};


  // Initialize Firebase
const app = initializeApp(firebaseConfig);
const db = getFirestore(app)
var imgElement = document.createElement('img');
var fullnameElement = document.getElementById('fullname');
var careerElement = document.getElementById('career');
var divImg = document.getElementById('picture');
var uid;
async function getUsers(db) {
    const userSnapshot = await getDocs(collection(db, "users"));
    return userSnapshot;
}

async function getAddress(db) {
    const addressSnapshot = await getDocs(collection(db, "users", uid, "address"));
    return addressSnapshot;
}

function showUserData(user) {
    uid = user.id;
    console.log(user.data().career)
    document.getElementById('username').innerHTML = user.data().name;
    document.getElementById('phonenumber').innerHTML = user.data().phonenumber;
    document.getElementById('email').innerHTML = user.data().email;
    imgElement.src = user.data().urlpic;
    imgElement.style.width = '200px';
    imgElement.style.height = '250px';
    fullnameElement.innerHTML = user.data().name;
    careerElement.innerHTML = user.data().career;
/*    imgElement.style.boxShadow = 'box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.3)';*/
    divImg.appendChild(imgElement)
}
function showAddressData(address) {
    document.getElementById('address').innerHTML = address.data().fullname;
}

const userData = await getUsers(db)
userData.forEach(user => {
    showUserData(user);
    console.log("user :", user)
})

const addressData = await getAddress(db)
addressData.forEach(address => {
    showAddressData(address);
    console.log("address :", address)
})


//const userSnapshot = await getDocs(collection(db, "users"));
//userSnapshot.forEach((doc) => {
//    uid = doc.id;
//    //console.log("user1 :", doc.data())
//    document.getElementById('username').innerHTML = doc.data().name;
//    document.getElementById('phonenumber').innerHTML = doc.data().phonenumber;
//    document.getElementById('email').innerHTML = doc.data().email;
//});

//const querySnapshot = await getDocs(collection(db, "users", uid, "address"));
//querySnapshot.forEach((doc) => { 
//    //console.log("address :", doc.data());
//    document.getElementById('address').innerHTML = doc.data().fullname;
//});




