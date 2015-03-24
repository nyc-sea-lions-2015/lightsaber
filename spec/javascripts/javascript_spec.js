include('/public/javascripts/main.js')

describe("calculator", function() {
  it("is defined", function() {
    var calc = calculator();
    expect(new Calculator()).toBeDefined();
  });

  describe("add", function() {
    it("is defined", function() {
      var calc = calculator();
      expect(calc.add).toBeDefined();
    });
  });

  describe("subtract", function() {
    it("is defined", function() {
      var calc = calculator();
      expect(calc.subtract).toBeDefined();
    });
  });

  describe("multiple", function() {
    it("is defined", function() {
      var calc = calculator();
      expect(calc.multiple).toBeDefined();
    });
  });

  describe("divide", function() {
    it("is defined", function() {
      var calc = calculator();
      expect(calc.divide).toBeDefined();
    });
  });
})