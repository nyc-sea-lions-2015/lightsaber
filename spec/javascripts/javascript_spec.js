describe ('Javascript Calculator', function(){
  it ('Should be defined', function(){
    expect(calculator).toBeDefined();
  });

  it ('Should contain an addition function', function() {
    expect(calculator.add).toBeDefined()
  });

  it ('Should contain a subtraction function', function() {
    expect(calculator.subtract).toBeDefined()
  });

  it ('Should contain a multiplication function', function() {
    expect(calculator.multiply).toBeDefined()
  });

  it ('Should contain a division function', function() {
    expect(calculator.divide).toBeDefined()
  });

  it ('Should add two numbers', function(){
    expect(calculator.add(1, 2)).toEqual(3);
  });

  it ('Should subtract two numbers', function(){
    expect(calculator.subtract(3, 1)).toEqual(2);
  });

  it ('Should multiply two numbers', function(){
    expect(calculator.multiply(3, 9)).toEqual(27);
  });

  it ('Should divide two numbers', function(){
    expect(calculator.divide(36, 6)).toEqual(6);
  });

});