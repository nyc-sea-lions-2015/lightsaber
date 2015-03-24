var calculator = function() {
  var result = {
    add: function(x, y) {
      return (x + y);
      },
    subtract: function(x, y) {
      return (x - y);
      },
    multiple: function(x, y){
      return (x * y);
      },
    divide: function(x, y) {
      return (x / y);
      }
  }
  return result
};