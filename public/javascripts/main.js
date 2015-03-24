var calculator = {
  add: function(x,y) {
    var result = x+y;
    return result;
  },
  subtract: function(x,y) {
    return (x-y);
  },
  multiply: function(x,y) {
    return (x*y);
  },
  divide: function(x,y) {
    return (x/y);
  },
}
var errorModule = {
  show: function() {
    var errMessage = document.getElementById("error-message");
    errMessage.style.visibility = "visible";
  },
  hide: function() {
    var errMessage = document.getElementById("error-message");
    errMessage.style.visibility = "hidden";
  },
  changeText: function(text) {
    var errMessage = document.getElementById("error-message");
    errMessage.innerHTML = text;
  }
}