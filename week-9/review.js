// release 1: user stories
  // create a new grocery list
  // add an item with a quantity to the list
  // remove an item from the list
  // update quantities for items in your list
  // print list - make it look nice

// release 2: pseudocode
  // create a function that generates a new list
    // createlist object, use loop to iterate through list and increment and push into new list
  // function to add item
    // default item equals 1
  // function to remove item
    // delete
  // function to update quantity, takes three arguments, list, item, quantity
  // function to print list
    // create variable for output
    // FOR IN loop x in list have x go into output

function groceryList(list) {
  list = list.split(" ");
  var i = 0;
  var createList = {};
  while (i < list.length) {
    createList[list[i]] = 1
    i++
  };
  return createList;
};

function add_item(list, item) {
  list[item] = 1
};

function remove_item(list, item) {
  delete list[item]
};

function update_quantity(list, item, qty) {
  list[item] = qty
};

function print_list(list) {
  var output = ''
  for (var x in list) {
    output += x + ': ' + list[x] + "\n";
  };
  console.log("Grocery List");
  console.log("-------------");
  console.log(output);
};


var grocery = groceryList("bananas bread milk cheese bacon eggs")
add_item(grocery, "apples")
remove_item(grocery,"milk")
update_quantity(grocery,"apples", 5)
update_quantity(grocery,"bananas", 10)
print_list(grocery)

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

  writing functions and having them work together

What was the most difficult part of this challenge?

  I had trouble figuring out how to get it to print nicely with a function

Did an array or object make more sense to use and why?

  an object made more sense because it contained an item and a quantity pertaining to that item. similar to a hash.

*/