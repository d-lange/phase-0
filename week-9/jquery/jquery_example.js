// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
mainHeading = $('h1')
imageElement = $('img')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('body').children('h1').css({'background-color': 'lightgrey'})
$('body').children('h1').css({'border-color': 'black', 'border-weight': '5px', 'border-style': 'solid'})
$('body').children('h1').css({'visibility': 'inherit'})
$('body').children('h1').html("Sea Lions!")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://animals.sandiegozoo.org/sites/default/files/juicebox_slides/ocean_coastline_sea_lion.jpg').animate({
      'height': '300px',
      'width': '500px'
    })
  })

$('img').click('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png').animate({
      'height': '37px',
      'width': '220px'
    })
  })

//RELEASE 5: Experiment on your own

// animation is included above

/*
REFLECTION

What is jQuery?

  jQuery is a JavaScript library. It makes things like HTML document manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers.

What does jQuery do for you?

  It allows a programmer to use JavaScript more easily within HTML docs. A programmer can make websites they've created more interactive with the audience.

What did you learn about the DOM while working on this challenge?

  I learned how easy it is to look through elements of your HTML page with the DOM. You can easily see objects you've created just by typing in the element name.

*/

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

