const today = new Date();
function checkFirstName(firstName) {
    var name = /^[a-zA-Z]+$/;
    if (firstName.match(name)) {
        document.getElementById("firstName-error").classList.remove("infor-icon");
        document.getElementById("firstName").style.borderColor = "#ccc";
        return true;
    }
    else {
        document.getElementById("firstName").style.borderColor= " red";
        document.getElementById("firstName-error").classList.add("infor-icon");
    }
}
function checkSurname(surname) {
    var name = /^[a-zA-Z]+$/;
    if (surname.match(name)) {
        document.getElementById("surname-error").classList.remove("infor-icon");
        document.getElementById("surname").style.borderColor = "#ccc";
        return true;
    }
    else {
        document.getElementById("surname").style.borderColor= " red";
        document.getElementById("surname-error").classList.add("infor-icon");
    }
}

function checkPhoneNumber(phoneNumber) {
    var phone = /^\d{10}$/;
    if (phoneNumber.match(phone)) {
        document.getElementById("phoneEmail-error").classList.remove("infor-icon");
        document.getElementById("phoneEmail").style.borderColor = "#ccc";
        return true;
    }
    else {
        document.getElementById("phoneEmail").style.borderColor= " red";
        document.getElementById("phoneEmail-error").classList.add("infor-icon");
    }
}
function checkPass(pass) {
    var passPattern = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!&])[a-zA-Z0-9!&]{6,}$/;
    if (pass.match(passPattern)) {
        document.getElementById("pass-error").classList.remove("infor-icon");
        document.getElementById("newPass").style.borderColor = "#ccc";
        return true;
    }
    else {
        document.getElementById("newPass").style.borderColor= " red";
        document.getElementById("pass-error").classList.add("infor-icon");
    }
}
function register() {
    
    var firstName = document.getElementById("firstName").firstElementChild.value;    
    var surname = document.getElementById("surname").firstElementChild.value;
    var phoneNumber = document.getElementById("phoneEmail").firstElementChild.value;
    var pass = document.getElementById("newPass").firstElementChild.value;
    checkSurname(surname);
    checkFirstName(firstName);
    checkPhoneNumber(phoneNumber);
    checkPass(pass);
    checkDate();
    checkGender();
}      

for(var i= today.getFullYear(); i>= 1900; i--){
    document.getElementById("year").innerHTML += "<option value='"+i+"'>"+i+"</option>";
}
for(var i=1; i<=12; i++){
    var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    document.getElementById("month").innerHTML += "<option value='"+i+"'>" + monthNames[i-1] + "</option>";
}
for(var i=1; i<= new Date(document.getElementById("year").value, document.getElementById("month").value,0).getDate(); i++){
    document.getElementById("day").innerHTML += "<option value='"+i+"'>"+i+"</option>";
}
function setDay(){
    var daySelect = document.getElementById("day");
    var selectedDay = daySelect.value;
    daySelect.innerHTML = ""; 
    var maxDay = new Date(document.getElementById("year").value, document.getElementById("month").value,0).getDate();
    for(var i=1; i<=maxDay; i++){
        daySelect.innerHTML += "<option value='"+i+"'>"+i+"</option>";
    }
    if(selectedDay > maxDay){
        selectedDay = maxDay;
    }
    else {
        daySelect.value = selectedDay;
    }
}
document.getElementById("year").addEventListener("change", function(){
    setDay();
});
document.getElementById("month").addEventListener("change", function(){
    setDay();
});

// Lấy tất cả các phần tử input radio trong nhóm có tên là "sex"
var radioInputs = document.querySelectorAll('input[name="sex"]');
var gender=-1;
// Thêm sự kiện "change" cho mỗi phần tử input radio
radioInputs.forEach(function(input) {
    input.addEventListener('change', function() {
        gender = 1;
        // Nếu phần tử đang xem xét đã được chọn, hãy loại bỏ chọn các phần tử khác
        if (this.checked) {
            if(this.value==3){
                document.getElementById("customGender").style.display = "block";
            }
            else{
                document.getElementById("customGender").style.display = "none";
            }
            radioInputs.forEach(function(otherInput) {
                if (otherInput !== input) {
                    otherInput.checked = false;
                }
            });
        }
    });
});

// check day
function checkDate(){
    var day = document.getElementById("day").value;
    var month = document.getElementById("month").value;
    var year = document.getElementById("year").value;
    date = new Date(year, month, day);
    if(date > today){
        document.getElementById("day").style.borderColor = "red";
        document.getElementById("month").style.borderColor = "red";
        document.getElementById("year").style.borderColor = "red";

    } else {
        document.getElementById("day").style.borderColor = "#ccc";
        document.getElementById("month").style.borderColor = "#ccc";
        document.getElementById("year").style.borderColor = "#ccc";

    }
}
// Check gender
function checkGender(){
    if(gender == -1){
        document.querySelectorAll('.gender>span')[0].style.borderColor = "red";
        document.querySelectorAll('.gender>span')[1].style.borderColor = "red";
        document.querySelectorAll('.gender>span')[2].style.borderColor = "red";

    } else {
        document.querySelectorAll('.gender>span')[0].style.borderColor = "#ccc";
        document.querySelectorAll('.gender>span')[1].style.borderColor = "#ccc";
        document.querySelectorAll('.gender>span')[2].style.borderColor = "#ccc";
    }
}