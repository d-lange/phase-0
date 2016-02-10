
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var age = 25;
var newAge = age + 1;
console.log("You're turning " + newAge + " this year!");

var favoriteFood = prompt("What's your favorite food?");
alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle

for (var hash = "#"; hash.length < 8; hash += "#")
  console.log(hash);



// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}

console.log(min(23, 55));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "David",
  age: 25,
  favorite_foods: ["bacon", "french fries", "pizza"],
  quirk: "Even though I play guitar, I still will jam out on air-guitar."
};

console.log(me.name);
console.log(me.age);
console.log(me.favorite_foods);
console.log(me.quirk);