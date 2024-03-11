let form = document.getElementById('form')
let result = document.getElementById('result');
let [nameOfUser, phone, email] = ['name', 'phone', 'email'].map(e => document.getElementById(e))
form.addEventListener("submit", (e) => { 
    e.preventDefault();
    console.log(`${nameOfUser.value} ${phone.value} ${email.value}`)

    let phoneRegEx = /^[0-9]{10,11}$/
    let emailRegEx = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/

    if (nameOfUser.value == "") document.getElementById("name-error").innerHTML = "Error: Name is not empty!"
    else document.getElementById("name-error").innerHTML = ""
    
    if (!phoneRegEx.test(phone.value)) document.getElementById('phone-error').innerHTML = "Error: Phone is not valid!"
    else document.getElementById("phone-error").innerHTML = ""
    
    if (!emailRegEx.test(email.value)) document.getElementById('email-error').innerHTML = "Error: Email is not valid!"
    else document.getElementById("email-error").innerHTML = ""
    
    if (nameOfUser.value != "" && phoneRegEx.test(phone.value) && emailRegEx.test(email.value))
    result.innerHTML = `Hello ${nameOfUser.value}, I send confirmication to your mail ${email.value}. Please login via your phone: ${phone.value}`
    else result.innerHTML = ""
})