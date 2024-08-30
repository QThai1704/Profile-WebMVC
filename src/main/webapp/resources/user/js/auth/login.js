// Sử lý display cho các phần forgot, back to login và submit
loginForgot.addEventListener("click", function () {
    loginPassword.style.display = 'block';
    loginContact.style.display = 'none';
})

loginSubmit.addEventListener("click", function () {
    loginPassword.style.display = 'none';
    loginContact.style.display = 'block';
})

loginBack.addEventListener("click", function () {
    loginPassword.style.display = 'none';
    loginContact.style.display = 'block';
})



var user = document.getElementById('userName');
var pass = document.getElementById('passWord');
var noteLoginPass = document.getElementById('note-pass');

//Biểu thức chính quy của input userName
function checkLoginName(userName) {
    var check = /^[A-Za-z0-9]{8,20}$/
    return check.test(userName);
}

//Biểu thức chính quy của input passWord
function checkLoginPass(password) {
    var check = /^[A-Za-z0-9]{6,20}$/;
    return check.test(password);
}

//Biểu thức chính quy cho email
var checkEmail = /^([a-zA-Z0-9]+)@gmail\.com$/;
var loginEmail = document.getElementById('login-email');
var loginSubmit = document.getElementById('login-submit');
var noteLoginEmail = document.getElementById('note-email');
loginEmail.addEventListener("change", function () {
    if (checkEmail.test(loginEmail.value)) {
        noteLoginEmail.textContent = "";
        loginSubmit.classList.remove('disabled');
    }
    else {
        noteLoginEmail.textContent = "Must have the string '@gmail.com' at the end";
        loginSubmit.classList.add('disabled');
        noteLoginEmail.style.color = 'red';
        noteLoginEmail.style.fontSize = '20px';
    }
})

loginSubmit.addEventListener("click", function () {
    if (loginEmail.value.length === 0) {
        alert('Unsuccess!');
    }
    else {
        alert('Success!');
    }
})





