var Calculator = function() {
   this.total = 0;
   this.current = 0;
   this.operation = null;
   this.fractionExp = 0;
};

Calculator.prototype = {
  add: function() {
     this.calculate();
     this.operation = function(a, b) {
         return a + b;
     };
     this.setCurrent(0, "");
     this.fractionExp = 0;
   }
};

var calc = new Calculator();

console.log(calc);

function calculate(elmnt,clr) {
  // elmnt.style.color = clr;
  alert("hi");
}

