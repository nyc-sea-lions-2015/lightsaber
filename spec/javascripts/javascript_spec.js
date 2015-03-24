describe("Canary test", function() {
  it("should work", function() {
    expect(true).toBe(true);
  });
});

var myObj = {a: 7, b: 4}
var calc = new Calculator();

describe("Obj test", function() {
  it("should have a number 7", function(){
  	expect(myObj.a).toBe(7);
  });
});

describe("Addition test", function() {
  it("should add 7 and 4 to equal 11", function(){
  	expect(calc.add(7,4)).toBe(11);
  });
});

describe("Subtraction test", function() {
  it("should subtract 7 and 4 to equal 3", function(){
  	expect(calc.subtract(7,4)).toBe(3);
  });
});

describe("Division test", function() {
  it("should divide 7 and 4 to be 1.75", function(){
  	expect(calc.divide(7,4)).toBe(1.75);
  });
});

describe("Multiplication test", function() {
  it("should multiply 7 and 4 to equal 28", function(){
  	expect(calc.multiply(7,4)).toBe(28);
  });
});