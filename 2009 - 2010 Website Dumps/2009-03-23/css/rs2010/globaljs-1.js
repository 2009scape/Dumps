
/* start ready function*/$(function(){


/* === JAVASCRIPT IS ENABLED ================================================ */

$("body").addClass("JS");


/* === ADDING ?j=1 TO PLAY LINKS ============================================ */

$("#play, #playExisting, #playnow, #FooterPlay").each(function(){ this.href += "?j=1"; });
$("#menuPlay1,#menuPlay2,#footerPlay,#loginPlay").each(function(){ this.href += "&j=1"; })


/* end ready function*/})


/* === COOKIE CHECKER ======================================================= */

function cookie_enabled(){
 var cookieEnabled = (navigator.cookieEnabled) ? true : false;
 if(typeof navigator.cookieEnabled == "undefined" && !cookieEnabled){
  document.cookie = "cookietest";
  cookieEnabled = (document.cookie.indexOf("cookietest") != -1) ? true : false;
 }
 return cookieEnabled;
}