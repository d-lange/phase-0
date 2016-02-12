 // JavaScript Olympics

// I paired [by myself, with: Xin Zhang] on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up

// function athlete(name, event){
//   this.win = name + " won the ".concat(event)
// }

// var david = new athlete("David", "Wimbledon Cup");
// var xin = new athlete("Xin", "WBC Welterweight Belt");

// var athleteArray = [david, xin]

// var win = function(anything) {
//   for (var i=0; i < athleteArray.length; i++) {
//     console.log(athleteArray[i].win);
//   }
// }


// win(athleteArray)


// Jumble your words

// function revString(string) {
//   var jumble = string.split('').reverse().join('');
//   console.log(jumble);
// }

// revString("hope this works");


// 2,4,6,8

// function even(numbers) {
//   var new_array = [];
//   for (var i = 0; i <= numbers.length; i++) {
//     if(numbers[i] % 2 === 0) {
//       new_array.push(numbers[i]);
//     }
//   }
//   console.log(new_array);
// };

// even([1,2,3,4,5,6]);


// "We built this city"

// function Athlete(name, age, sport, quote) {
//   this.name = name;
//   this.age = age;
//   this.sport = sport;
//   this.quote = quote;
// };


// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection

// What JavaScript knowledge did you solidify in this challenge?

    // loops, properties, constructor objects, mostly everything that there is to understand!

// What are constructor functions?

    // constructor functions are passed a set of arguments and they create an object based on those arguments values.

// How are constructors different from Ruby classes (in your research)?

    //Ruby classes are frameworks for objects. JS constructors assemble objects, like ruby's hashes, from a set of arguments. It also uses 'this' to initiate the property, which Ruby classes do not.