


var JAGEX = JAGEX || {};

JAGEX.cookie = new function(){
 
 this.set = function(throw_name,throw_value){
  var date = new Date();
  date.setTime(date.getTime() + 315360000000);
  var expires = date.toGMTString();
  
  document.cookie = throw_name + "=" + throw_value + "; expires=" + expires + "; path=/; domain=.jagex.com;";
 }
 
 this.get = function(throw_name){
  var cookies = document.cookie.split('; ');
  var regex = '';
  regex = new RegExp("^" + throw_name + "=(.*)");
  for(var i in cookies){
   if(t = cookies[i].match(regex)){
    return t[1];
   }
  }
  return null;
 }

 
}