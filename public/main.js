var calculator = {
  add: function (x,y){
    return x + y;
  },

  subtract: function(x,y) {
    return x - y;
  },

  multiply: function(x,y) {
    return x * y;
  },
  divide: function(x,y) {
    if (y==0) {
      return "Do not divide by zero."
    }
    else {
      return x / y;
    }
  }
};

var errorModule = {
  show: function(element){
    foundElement = document.getElementsById(element)
    foundElement.style.visibility = 'visible';
  },
  hide: function(element){
    foundElement = document.getElementsById(element)
    foundElement.style.visibility = 'hidden';
  },
  change: function(element, text){
    foundElement = document.getElementsById(element)
    foundElement.replaceWith(text);
  }
}
