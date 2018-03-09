window.onload = startfunction

function startfunction() {
    //Create an input type dynamically.   
 
   

    var Bike = document.getElementById("Bike");


    Bike.onclick = function() { //This is the click for 
    alert("2 hours");
     };
   
    var Penguin = document.getElementById("Penguin");


    Penguin.onclick = function() { // Note this is a function
    alert("not reasonable");
     };



     var Car = document.getElementById("Car");


    Car.onclick = function() { // Note this is a function
    alert("12 minutes");
     };
   }