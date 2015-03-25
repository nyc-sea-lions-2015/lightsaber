var errorModule = {
  show: function() {
    document.getElementById('error').style.display='block'; 
  },
  hide: function(){
    document.getElementById('error').style.display='none'; 
  }, 
  change: function(text, showImmediately) {
    document.getElementById('error').innerText = text;
    if (showImmediately) {
      this.show()
    }
  } 
};
