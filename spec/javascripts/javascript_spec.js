describe ("canary test", function(){
  it("should work", function(){
    expect(true).toBe(true);
  });
});

describe ("calculator", function(){
  it("should return a calculator object", function(){
    expect(calculator()).toBeDefined();
  });
  it ("should return the sum of 2 and 3 to be 5", function(){
    var sum = calculator();
    expect(sum.add(2,3)).toEqual(5);
  });
  it ("should return the difference of 300 and 200 to be 100", function(){
    var diff = calculator();
    expect(diff.subtract(300,200)).toEqual(100);
  });
  it ("should return the product of 2 and 3 to be ", function(){
    var prod = calculator();
    expect(prod.multiply(2,3)).toEqual(6);
  });
  it ("should return the quotient of 200 and 5 to be ", function(){
    var quo = calculator();
    expect(quo.divide(200,5)).toEqual(40);
  });
});