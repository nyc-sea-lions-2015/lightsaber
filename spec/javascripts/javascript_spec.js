describe("Canarytest", function(){
  it("should be connected", function(){
    expect(true).toBe(true);
  });
});

describe("errorModule", function(){
  it("should return a errorModule object", function(){
    expect(errorModule).toBeDefined;
  });

  describe("errorModule.hide", function(){
    it("should return hide function", function(){
      expect(errorModule.hide).toBeDefined;
    });
  });

  describe("errorModule.show", function(){
    it("should return show function", function(){
      expect(errorModule.show).toBeDefined;
    });
  });

  describe("errorModule.edit", function(){
    it("should return edit function", function(){
      expect(errorModule.edit).toBeDefined;
    });
  });
});

describe ("calculator", function(){
  it("should return a calculator object", function(){
    expect(calculator).toBeDefined();
  });

  describe ("calculator.add", function(){
    it("should return an addition function", function(){
      expect(calculator.add).toBeDefined();
    });

    it("should return sum of two numbers", function(){
      expect(calculator.add(4,5)).toBe(9);
    });
  });

  describe ("calculator.subtract", function(){
    it("should return a subtraction function", function(){
      expect(calculator.subtract).toBeDefined;
    });

    it("should return the difference of two numbers", function(){
      expect(calculator.subtract(10,5)).toBe(5);
    });
  });

  describe ("calculator.divide", function(){
    it("should return a division function", function(){
      expect(calculator.divide).toBeDefined;
    });

    it("should return the quotient of two numbers", function(){
      expect(calculator.divide(9,3)).toBe(3);
    });
  });

  describe ("calculator.multiply", function(){
    it("should return a multiplication function", function(){
      expect(calculator.multiply).toBeDefined;
    });

    it("should return the product of two numbers", function(){
      expect(calculator.multiply(3,4)).toBe(12);
    });
  });
});
