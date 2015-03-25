describe("Show erorr div", function() {
  it("should be a defined method", function(){
  	expect(errorModule.show()).toBe(defined);
  });
});

describe("Hide error div", function() {
  it("should be a defined method", function(){
  	expect(errorModule.hide()).toBe(defined);
  });
});

describe("Change error div", function() {
  it("Should change the inner text", function(){
  	expect(errorModule.change('flibbertiwidget', true)).toBe(defined);
  });
});