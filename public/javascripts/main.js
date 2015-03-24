var calculator = {
    add: function(x,y){
        return (x+y);
    },
    subtract: function(x,y){
        return (x-y);
    },
    multiply: function(x,y){
        return (x*y);
    },
    divide: function(x,y){
        return (x/y);
    }
};


var errorModule = {
    hide: function(){
        var test = document.getElementById("error");
        test.style.display = "none";
    },
    show: function(){
        var test = document.getElementById("error");
        test.style.display = "block";
    },
    edit: function(input){
        var test = document.getElementById("error");
        test.innerText = input;
    }
};
