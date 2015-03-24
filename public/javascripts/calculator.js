var Calculator = function() {
    this.total = 0;
    this.current = 0;
};

Calculator.prototype = {
    add: function(a,b) {
      return a + b;
    },
    subtract: function(a,b) {
      return a - b;
    },
    multiply: function(a,b) {
      return a * b;
    },
    divide: function(a,b) {
      return a / b;
    }
};

var calc = new Calculator();
console.log(calc.add(3,2));
console.log(calc.subtract(3,2));
console.log(calc.multiply(3,2));
console.log(calc.divide(3,2));