describe ("canary test", function(){
  it("should work", function(){
    expect(true).toBe(true);
  });
});

describe("calculator", function() {
  it("is defined", function() {
    expect(calculator).toBeDefined();
  });

  describe("add", function() {
    it("is defined", function() {
      var calc = calculator;
      expect(calc.add()).toBeDefined();
    });
  });

  describe("add", function() {
    it("returns the correct sum", function() {
      var calc = calculator;
      expect(calc.add(3, 3)).toBe(6);
    });
  });

  describe("subtract", function() {
    it("is defined", function() {
      var calc = calculator;
      expect(calc.subtract()).toBeDefined();
    });
  });

  describe("subtract", function() {
    it("returns the correct difference", function() {
      var calc = calculator;
      expect(calc.subtract(9, 6)).toBe(3);
    });
  });

  describe("multiply", function() {
    it("is defined", function() {
      var calc = calculator;
      expect(calc.multiple()).toBeDefined();
    });
  });

  describe("multply", function() {
    it("returns the correct product", function() {
      var calc = calculator;
      expect(calc.multiple(3, 3)).toBe(9);
    });
  });

  describe("divide", function() {
    it("is defined", function() {
      var calc = calculator;
      expect(calc.divide()).toBeDefined();
    });
  });

  describe("divide", function() {
    it("returns the correct quotient", function() {
      var calc = calculator;
      expect(calc.divide(3, 3)).toBe();
    });
  });
});