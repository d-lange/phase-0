 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Beat the bully in a fight
// Goals: damage the bully before you lose damage
// Characters: Nerd, Bully
// Objects: Nerd(health, win), Bully(health)
// Functions:attackPunch, attackKick, attackPush, attackSlap

// Pseudocode

// declare a nerd object that has properties of health and win.
// write function that add methods to nerd to make it be able to attack bully
// declare a bully object that has health property.
// After every move, check the health of both bully and nerd.
// Let user know health of both themselves and bully.
// Whoever's health gets to 0 first, they win. If the nerd decides not to fight, game over.

// Initial Code

confirm("Are you ready to play my game?");

var age = prompt("How old are you?");

if(age < 13) {
    alert("You're allowed to play, but I take no responsibility!");
}
else {
    alert("Awesome! Enjoy playing!");
}

console.log("You are a nerd! Looks like it's 3pm and the bully that's been picking on you has challenged you to a fight.");

var userAnswer = prompt("Do you want to fight the bully?")

if (userAnswer === "yes") {
    alert("Wow, you're brave! People start circling around you and the bully. You take your glasses off and get ready to finally confront your bully!");
}
else {
    alert("Looks like you ran as fast as you could to your friends house and saved yourself another day! Game over!");
}

var nerd = {
  health: 100,
  win: false,

// function that
attack: function(type_of_attack) {
  if(type_of_attack === 'punch') {
    bully.health -= 10;
    console.log("You've punched the bully and damaged him! His health is now " + bully.health.toString() + ". Keep going!!");
  }
  else if(type_of_attack === 'kick') {
    bully.health -= 20;
    console.log("You've kicked the bully and hurt his leg! His health is now " + bully.health.toString() + ". Keep going!!");
  }
  else if(type_of_attack === 'push') {
    nerd.health -= 10;
    console.log("Looks like you've pushed the bully. He laughed in your face and slapped you! Your health is now " + nerd.health.toString() + ".");
  }
  else if(type_of_attack === 'slap') {
    nerd.health -= 20;
    bully.health -= 10;
    console.log("You just slapped the bully in the face! His health is now " + bully.health.toString() + ". Unfortunately, he retreated by poking you in the eye! Your health is now " + nerd.health.toString() + ". You got this. Keep going!");
  }

  // let user know what the health status is during the fight
  console.log("Currently, your health is at " + nerd.health + " and the bully's health is " + bully.health + ".");

  //After every move, check if the nerd or the bully is winning
  if(nerd.health < bully.health && nerd.health != 0) {
    console.log("The bully is beating you! Don't give up!");
  }
  else if(bully.health < nerd.health && bully.health != 0) {
    console.log("You're beating the bully. Keep going and you'll win!");
  }
  else if(nerd.health <= 0) {
    console.log("Womp, womp! The bully has beaten you! You run home crying!");
  }
  else if(bully.health <= 0) {
    nerd.win = true;
    alert("Yay! You've beaten the bully! He's never going to bother you again!");
  }

}
};

var bully = {
  health: 100,
};

nerd.attack('punch');
nerd.attack('push');
nerd.attack('kick');
nerd.attack('slap');
nerd.attack('punch');
nerd.attack('kick');
nerd.attack('push')
nerd.attack('kick');
nerd.attack('punch');

// Refactored Code






// Reflection

//What was the most difficult part of this challenge?

  // honestly, just figuring out what kind of game I wanted to make and what I wanted the player to be able to do. Of course the purpose of this challenge is to design a simple game, but it's clear the more you get into it the more you want to make it do more and more things. I guess just making it a seamless experience of a game was the hardest.

// What did you learn about creating objects and functions that interact with one another?

  // I learned that that a function must utilize the objects properties in order to interact with it and modify it.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

  // I did not, I'm still figuring out how I should refactor this.

// How can you access and manipulate properties of objects?

  // By accessing the object followed by the property, example: nerd.health. nerd is the object and health is a property within the nerd object.

//