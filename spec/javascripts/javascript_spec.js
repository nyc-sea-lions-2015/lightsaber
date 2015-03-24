describe("Canary test", function() {
  it("should work", function() {
    expect(true).toBe(true);
  });
});

var myObj = {a: 7, b: 4}

describe("Obj test", function() {
  it("should have a number 7", function(){
  	expect(myObj.a).toBe(7);
  });
});

describe("Obj test", function() {
  it("should have a number 4", function(){
  	expect(myObj.b).toBe(4);
  });
});
