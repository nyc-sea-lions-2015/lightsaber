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
console.log(calc.add(7,4));
console.log(calc.subtract(7,4));
console.log(calc.multiply(7,4));
console.log(calc.divide(7,4));