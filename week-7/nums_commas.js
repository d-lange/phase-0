// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Victor Wong.

// Pseudocode
  //the input is going to be an integer
  //change to a string, turn into array
  //reverse the array
  //find the length of the array
  //write a loop to iterate through the array inserting commas
  // determine the number of commas needed based on the length of the string
  // an index counter i = -1
  // condition is true
  // i += 4
  // number.splice(i, 0, ",");
  // reverse back the array and join it
  // separateComma(1569743) == "1,569,743"



// Initial Solution

// function separateComma(num) {

//    var num = num.toString();
//    var num = num.split('');
//    var num = num.reverse();

//   console.log(num);

//   var length = num.length;

//   console.log(length);

//   var commas = Math.floor((length-1)/3);

//   console.log(commas);

//   var i = -1;

//   while (commas > 0) {

//     i += 4;

//     num.splice(i, 0, ",");

//     commas--;
//   }

//    console.log(num);

//   var int = num.reverse();
//   console.log(int.join(""));

// };



//   separateComma(1000000);



// Refactored Solution

function separateComma(num) {
  var num = num.toString().split('').reverse();
  var length = num.length;
  var commas = Math.floor((length-1)/3);

  var i = -1;
  while (commas > 0) {
    i += 4;
    num.splice(i, 0, ",");
    commas--;
  }
  console.log(num.reverse().join(""));
};

  separateComma(100000);

// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  // Overall i think we approached in a relatively similar fashion to when I came up with the Ruby solution. I found it to be much easier to understand the logic and implement the code here, that probably comes with practice and better pseudocode.

// What did you learn about iterating over arrays in JavaScript?

  // I learned that using counters and loops is a great way to iterate over an array.

// What was different about solving this problem in JavaScript?

  // I think setting the local variables so that I could utilize them for each part of the problem. also using a while loop and the way math.floor works with length of the array and when the comma should be inserted.

// What built-in methods did you find to incorporate in your refactored solution?

  // .toString, .split, .reverse, .join, .length, .splice and Math.floor were all great for this.