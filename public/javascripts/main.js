var calculator = {
add: function(x, y) {
  return (x + y);
  },
subtract: function(x, y) {
  return (x - y);
  },
multiply: function(x, y){
  return (x * y);
  },
divide: function(x, y) {
  return (x / y);
  },
};

var errorModule = function() {
  var hide = document.getElementsByClassName("hide");

  return {
    hide: function() {
      hide.style.visibility='hidden';
    },
    show: function() {
      hide.style.visibility='visible';
    },
    on: function(onClick, ahhh) {
      hide.addEventListener(onClick, ahhh);
    },
    trigger: function(event) {
      var build = new Event(event);
      hide.dispatchEvent(build);
    }
  }
};