// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Ayaz Uddin
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// tally votes
  // iterate over votes
  // create empty arrays for each officer
  // use FOR..IN loop: for all votes for each officer, push into the appropriate array
  // create Counts objects for each officer
  // use FOR loop as long as counter is less than the arrays length, increment through the array
  // for every students vote, add 1 to the candidates total in vote count
    // have Counts object nested array and counter variable equal Counts object with nested array and counter + 1 or 1 so that it won't be undefined.
  // do this for each officer
  // set voteCount[each officer] equal the appropriate Counts object variable

// fill officers object with correct winners from the votes

  // retrieve the max value of votes in each array
    // push Counts objects into new array for count and name
    // for loop to and use counter to iterate through new Counts array
    // IF Counts array is greater than Max variable which is set to 0, store Counts array with counter to maxofficer and max index
  // put data into officers objects properties equal countsname array by the max index

// __________________________________________
// Initial Solution

// totalling votes for each candidate for each officer.

var presidentArray = [];
var vicePresidentArray = [];
var secretaryArray = [];
var treasurerArray = [];

var presidentCounts = {};
var vicePresidentCounts = {};
var secretaryCounts = {};
var treasurerCounts = {};

for (var x in votes) {
  presidentArray.push(votes[x]["president"]);
}

for (var x in votes) {
  vicePresidentArray.push(votes[x]["vicePresident"]);
}

for (var x in votes) {
  secretaryArray.push(votes[x]["secretary"]);
}

for (var x in votes) {
  treasurerArray.push(votes[x]["treasurer"]);
}

for (var i = 0; i < presidentArray.length; i++) {
  presidentCounts[presidentArray[i]] = presidentCounts[presidentArray[i]] + 1 || 1;
}
for (var i = 0; i < vicePresidentArray.length; i++) {
  vicePresidentCounts[vicePresidentArray[i]] = vicePresidentCounts[vicePresidentArray[i]] + 1 || 1;
}

for (var i = 0; i < secretaryArray.length; i++) {
  secretaryCounts[secretaryArray[i]] = secretaryCounts[secretaryArray[i]] + 1 || 1;
}

for (var i = 0; i < treasurerArray.length; i++) {
  treasurerCounts[treasurerArray[i]] = treasurerCounts[treasurerArray[i]] + 1 || 1;
}

voteCount["president"] = presidentCounts;
voteCount["vicePresident"] = vicePresidentCounts;
voteCount["secretary"] = secretaryCounts;
voteCount["treasurer"] = treasurerCounts;

// console.log(voteCount);

// getting winners

// president

var presidentCountsNameArray = [];
var presidentCountsArray = [];
for (var x in presidentCounts) {
  presidentCountsArray.push(presidentCounts[x]);
  presidentCountsNameArray.push(x);
}

var maxPres = 0;
var maxByIndex = 0;
for (var i = 0; i < presidentCountsArray.length; i++) {
  if (presidentCountsArray[i] > maxPres) {
      maxPres = presidentCountsArray[i];
      maxByIndex = i;
  }
}

console.log(officers.president = presidentCountsNameArray[maxByIndex]);

// vice president

var vicePresidentCountsNameArray = [];
var vicePresidentCountsArray = [];
for (var x in vicePresidentCounts) {
  vicePresidentCountsArray.push(vicePresidentCounts[x]);
  vicePresidentCountsNameArray.push(x);
}

var maxVicePres = 0;
var maxByIndex = 0;
for (var i = 0; i < vicePresidentCountsArray.length; i++) {
  if (vicePresidentCountsArray[i] > maxVicePres) {
      maxVicePres = vicePresidentCountsArray[i];
      maxByIndex = i;
  }
}

console.log(officers.vicePresident = vicePresidentCountsNameArray[maxByIndex]);

// secretary

var secretaryCountsNameArray = [];
var secretaryCountsArray = [];
for (var x in secretaryCounts) {
  secretaryCountsArray.push(secretaryCounts[x]);
  secretaryCountsNameArray.push(x);
}

var maxSec = 0;
var maxByIndex = 0;
for (var i = 0; i < secretaryCountsArray.length; i++) {
  if (secretaryCountsArray[i] > maxSec) {
      maxSec = secretaryCountsArray[i];
      maxByIndex = i;
  }
}

console.log(officers.secretary = secretaryCountsNameArray[maxByIndex]);

// treasurer

var treasurerCountsNameArray = [];
var treasurerCountsArray = [];
for (var x in treasurerCounts) {
  treasurerCountsArray.push(treasurerCounts[x]);
  treasurerCountsNameArray.push(x);
}

var maxTreas = 0;
var maxByIndex = 0;
for (var i = 0; i < presidentCountsArray.length; i++) {
  if (treasurerCountsArray[i] > maxTreas) {
      maxTreas = treasurerCountsArray[i];
      maxByIndex = i;
  }
}

console.log(officers.treasurer = treasurerCountsNameArray[maxByIndex]);

// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

//   I learned how to utilize for..in loops as well as setting different variables to hold new information affected by counters and breaking down the objects to access the right elements.

// Were you able to find useful methods to help you with this?

//   Ruby is way easier to find methods so I wasn't really able to use that many beside .push and .length.

// What concepts were solidified in the process of working through this challenge?

//   Using variables to store things outside of the loop and then adding to them and retrieving the index value.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)