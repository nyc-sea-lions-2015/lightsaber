describe("Canarytest", function(){
  it("should work", function(){
    expect(true).toBe(true);
  });
});

describe ("calculator", function() {
  it("should return a calculator object", function(){
    expect(calculator).toBeDefined();
  });
});


//what should the "should be" text be for the tobedefined methods
describe ("calculator.add", function() {
  it("should return an addition object", function(){
    expect(calculator.add()).toBeDefined();
  });
  it("should return the sum of arguments", function(){
    expect(calclator.add())//THIS IS WHERE YOU LEFT OFF. LOOK AT YOUR NOTES AND FIGURE OUT HOW TO DO THE LET STATEMENT EQUIVALENT IN JASMINE
  })
});

describe ("calculator.subtract", function() {
  it("should return an subtraction object", function(){
    expect(calculator.subtract()).toBeDefined();
  });
});

describe ("calculator.multiply", function() {
  it("should return an multiplication object", function(){
    expect(calculator.multiply()).toBeDefined();
  });
});

describe ("calculator.divide", function() {
  it("should return a division object", function(){
    expect(calculator.divide()).toBeDefined();
  });
});

