// var calculator = {
// add: function(x, y) {
//   return (x + y);
//   },
// subtract: function(x, y) {
//   return (x - y);
//   },
// multiply: function(x, y){
//   return (x * y);
//   },
// divide: function(x, y) {
//   return (x / y);
//   },
// };

var errorModule = function() {
  var show_error = document.getElementById("error");
  var hide_error = document.getElementById("fixer");
  var change_error = document.getElementById("change")

    show_error.addEventListener('click', function(){
      var error_button = document.getElementById("error_msg");
      error_button.style.visibility="visible"});

    hide_error.addEventListener('click', function(){
      var error_button = document.getElementById("error_msg");
      error_button.style.visibility="hidden"});

    change_error.addEventListener('click', function(){
      var error_button = document.getElementById("error_msg");
      var prompt_msg = prompt("What's the error?")
      error_button.innerHTML=prompt_msg});
};