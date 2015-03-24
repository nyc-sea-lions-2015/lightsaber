function calculator(){
  var calc = {
    add: function(x,y){
      return(x + y)
      },
    subtract: function(x,y){
      return (x - y)
      },
    multiply: function(x,y){
      return (x*y)
      },
    divide: function(x,y){
      return (x/y)
      }
  }
  return calc
};

var hmm = calculator()
console.log(hmm.add(2,3))
console.log(hmm.subtract(200,300))
console.log(hmm.multiply(2,3))
console.log(hmm.divide(200,5))
