describe("Canarytest", function() {
  it("should work",function(){
    expect(true).toBe(true);
  });
});


describe("calculator test", function() {
  it("has calculator",function() {
    expect(calculator).toBeDefined();
  });
  it("has add attribute",function() {
    expect(calculator.add).toBeDefined();
  });
  it("adds numbers attribute", function() {
     expect(calculator.add(1,2)).toEqual(3);
  });
  it("has subtract attribute", function() {
     expect(calculator.subtract).toBeDefined();
  });
  it("subtracts two numbers", function() {
     expect(calculator.subtract(8,2)).toEqual(6);
  });
  it("has multiply attribute", function() {
     expect(calculator.multiply).toBeDefined();
  });
  it("multiplies two numbers", function() {
     expect(calculator.multiply(5,2)).toEqual(10);
  });
  it("has divide attribute", function() {
     expect(calculator.divide).toBeDefined();
  });
  it("divides two numbers",function() {
     expect(calculator.divide(24,8)).toEqual(3);
  });
});

describe("errorModule test", function() {
  it("it exists",function() {
    expect(errorModule).toBeDefined();
  });
  it("has show function", function() {
    expect(errorModule.show).toBeDefined();
  });
  it("has hide function", function() {
    expect(errorModule.hide).toBeDefined();
  });
  it("has changeText function", function() {
    expect(errorModule.changeText).toBeDefined();
  });
});