//Callback function
function myFunction(f){
    f();
}

//Object
var myObject = {
    firstName: "John",
    lastName: "Doe",
    fullName: function(){
        return this.firstName + " " + this.lastName;
    }
};

// let user = new Object();
// let user = {};

let user = {
    name: "John",
    age: 30
};
console.log(user.name);
console.log(user.age);

user.isAdmin = true;
console.log(user.isAdmin);

//user-defined Objects
