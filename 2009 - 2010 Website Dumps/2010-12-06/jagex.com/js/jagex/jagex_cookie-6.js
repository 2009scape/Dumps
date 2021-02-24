




var JAGEX = JAGEX || {};

JAGEX.cookie = {

 set: function(throw_name,throw_value,throw_domain,throw_expires){
  var
   date = new Date(),
   name = throw_name,
   value = throw_value,
   domain = throw_domain || ".jagex.com",
   expires = throw_expires >= 0 ? throw_expires : 315360000000
  ;
  if(expires){
   date.setTime(date.getTime() + expires);
   expires = date.toGMTString();
   expires_str = '; expires=' + expires;
  }
  else {
   expires_str = '';
  }
  document.cookie = throw_name + "=" + throw_value + expires_str + "; path=/; domain=" + domain + ";";
 }

 ,

 get: function(throw_name){
  var
   cookies = document.cookie.split('; '),
   cookies_length = cookies.length,
   regex = new RegExp("^" + throw_name + "=(.*)")
  ;
  for(var i = 0; i < cookies_length; i++){
   if(t = cookies[i].toString().match(regex)){
    return t[1];
   }
  }
  return null;
 }

}
