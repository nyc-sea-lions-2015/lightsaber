describe ('Javascript Calculator', function(){
  it ('Should be defined', function(){
    expect(calculator).toBeDefined();
  });

  it ('Should add two variables', function(){
    expect(calculator.add(1, 2)).toEqual(3);
  });
});