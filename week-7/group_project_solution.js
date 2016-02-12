/*
Release 1: Tests to User Stories (Ian Fricker)
    We are to write a javaScript program that manipulates a set of numbers.  To these set of numbers we would like to do the following mathematical statistic equations.  We would like to find the sum of the set of numbers.  We are trying to find the mean(average) of the set of numbers. And the median(middle) of the set of numbers.
*/

// Release 2: Pseudocode to Code (David Lange, FJ Collins)
/* Psseudocode:

// SUM
-Declare a total variable & set equal to 0
-Create a 'sum' function that accepts an array of numbers
  -FOR loop through the array
  -set counter to 0
  -While counter is less than array length, increment counter by 1
  -Assign(+=) Total variable to the array with counter (array[x])
  -Return total
  -Close function

// AVERAGE
-Declare an average variable & set equal to 0
-Create a 'mean' function that accepts an array of numbers
  -FOR loop through the array
  -set counter to 0
  -While counter is less than array length, increment counter by 1
  -Assign(+=) Average variable to the (array with counter (array[x]) divided by the length of the array).
  -Return average
  -Close function

// MEDIAN
-Declare a function median that accepts an array of numbers
-Sort the array with a compare function to arrange numbers from smallest to largest.
-Declare a variable that divides the array length by 2 (make sure to use #floor for odd indexes)
-Conditional Statement
  -IF length is divisible by 2 evenly,
    -return array[half-1] plus array[half] divided by 2.0 (this applies to an even amount of indexes)
  -ELSE return array[half]
-close function
*/
