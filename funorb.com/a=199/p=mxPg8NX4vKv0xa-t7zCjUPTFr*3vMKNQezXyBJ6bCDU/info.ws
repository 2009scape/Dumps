<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="
en" xmlns:IE>
<head>
<title>FunOrb - Free Online Games</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Language" content="
en">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="PRAGMA" content="NO-CACHE">
<meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
<meta name="keywords" content="Play Free Online Games, puzzle games, platform games, arcade games, shooter games, action games, java games, casual games, racing games, word games, retro games, classic games, browser games, strategy games, multiplayer games, arcanists, Jagex">
<meta name="description" content="FunOrb, free online browser-based games from Jagex, the makers of RuneScape. Play puzzle, action, strategy, shooting, word, racing games and more!">
<meta name="title" content="FunOrb - Free Online Games">
<meta name="Author" content="www.jagex.com">
<meta name="Copyright" content="Copyright 1999 - 2008 Jagex Ltd, www.jagex.com">
<meta name="ROBOTS" content="INDEX, FOLLOW">
<meta name="classification" content="GENERAL">
<meta name="rating" content="General">
<meta name="Distribution" content="global">
<meta name="Identifier-URL" content="http://www.funorb.com">
<style type="text/css" media="screen">
  /*\*/@import url(../../a=199/css/global-14.css);/**/
 </style>
<!--[if lt IE 7]>
<style type="text/css" media="screen">@import url(../../a=199/css/ieFix-1.css);</style>
<![endif]-->
<script type="text/javascript" src="../../a=199/css/layout.ws"></script>

<style>
 @media all {
  IE\:clientCaps {behavior:url(#default#clientcaps)}
 }
</style>
<IE:clientCaps ID="oClientCaps" />
<script language="javascript">
 var suffix="?js=1";
 if (navigator.appName=="Microsoft Internet Explorer") {
  if (!oClientCaps.getComponentVersion("{08B0E5C0-4FCB-11CF-AAA5-00401C608500}","ComponentID")) {
   suffix+="&applet=2";
  }
 }
 function suffixize(obj){
  if(!obj.suffixed){
   obj.href += suffix;
   obj.suffixed = true;
  }
 }
</script> <style type="text/css" media="screen">
 /*\*/@import url("../../a=199/css/info-6.css");/**/
 .intro {
  background-image: url(../../a=199/img/images/game/zombiedawnmulti/intro.jpg);
 }
 .buttonSubscribe {
  background-image: url(../../a=199/img/images/info/button_subscribe_225.gif);
 }
</style>
<script type="text/javascript">
//
var time = 4;
var timer;
var timer2;
var loading = 0;
var image = 0;
var images = Array();
//
images[0] = '../../a=199/img/images/game/zombiedawnmulti/screen1.jpg?1';
images[1] = '../../a=199/img/images/game/zombiedawnmulti/screen2.jpg?1';
images[2] = '../../a=199/img/images/game/zombiedawnmulti/screen3.jpg?1';
images[3] = '../../a=199/img/images/game/zombiedawnmulti/screen4.jpg?1';
//
function clearLoading(){
 try{
  if(images[0]){
   document.getElementById('screenshotsLoading0').style.backgroundPosition = '-83px -62px';
   if(images[1]){
    document.getElementById('screenshotsLoading1').style.backgroundPosition = '-83px -62px';
    if(images[2]){
     document.getElementById('screenshotsLoading2').style.backgroundPosition = '-83px -62px';
     if(images[3]){
      document.getElementById('screenshotsLoading3').style.backgroundPosition = '-83px -62px';
     }
    }
   }
  }
  loading = 0;
 }catch(e){}
}
//
function imageTimer(self){
 clearTimeout(timer2);
 clearTimeout(timer);
 clearLoading();
 timer = setTimeout("imageNext('" + self + "')", time * 1000);
}
//
function imageNext(self){
 if(loading == 1){return;}
 image++;
 if(image >= images.length){
  image = 0;
 }
 document.getElementById(self).src = images[image];
}
//
function imageGoto(self, img){
 image = img;
 // Don't bother re-loading the same image as it screws up Opera
 if(document.getElementById(self).src != images[image]){
  var timeDefault = time;
  time = time * 2;
  window.setTimeout('time = ' + timeDefault, timeDefault);
  timer2 = window.setTimeout("document.getElementById('screenshotsLoading' + image).style.backgroundPosition = '25px 12px';", 100);
  loading = 1;
  document.getElementById(self).src = images[image];
 }
 return false;
}
</script>
</head>
<body id="navGames">
<a name="top"></a>
<table id="wrapper">
<tbody>
<tr>
<td id="bodyTheme" class="center">
<div id="container">

<div id="header">
<div id="navigation">
<div class="lft"></div>
<div class="rght"></div>
<div class="container">
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws" id="logo"><span>FunOrb</span></a>
<div id="shell">
<div class="lft"></div>
<div class="rght"></div>
<div id="teleText">

<h1 id="welcomeText">Welcome to FunOrb - The Best in Free Online Games</h1>
<span id="teletext_inner">
To gain access to some of our multiplayer games, highscore tables and Achievements, please create an account. It's quick, easy and absolutely FREE!</span>
<script type="text/javascript" src="http://fomessenger.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/messengercommon0.js"></script>
<script type="text/javascript" src="http://fomessenger.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/messenger.js"></script>

</div>
</div>
</div>
<div class="clear"></div>
<ul class="menu">
<li class="top p1"><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws" id="home" class="top_link"><span>Home</span></a></li>
<li class="top p2"><a id="games" class="top_link" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws"><span>Games</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws" class="fly">All Games</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws?playerBox=1" class="fly">Single-Player Games</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws?playerBox=2" class="fly">Multiplayer Games</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/options.ws" class="fly last">Java Options</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p3"><a id="account" class="top_link" href="https://create.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/"><span>Join</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<ul class="sub">
<li><a href="https://create.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" class="fly">Create Free Account</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="fly">Subscribe to FunOrb</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/members.ws" class="fly last">Members' Benefits</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p4"><a id="forums" class="top_link" href="http://focommunity.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/"><span>Community</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="http://focommunity.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" class="fly">Community Home</a></li>
<li><a href="
http://forum-fo.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/forums.ws" class="fly">All Forums</a></li>
<li><a href="
http://forum-fo.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/forums.ws?0,1" class="fly">Announcements</a></li>
<li><a href="http://achievements.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" class="fly">Achievements</a></li>
<li><a href="http://hiscore-fo.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" class="fly">Highscores &amp; Ratings</a></li>
<li><a href="http://orbcoins.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" class="fly last">Orb Downloads</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p5"><a id="help" class="top_link" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/kbase/view.ws?guid=help"><span>Help</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/kbase/view.ws?guid=customer_support" class="fly">Customer Support</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/parents.ws" class="fly">Parents' Guide</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/kbase/view.ws?guid=rules_of_conduct" class="fly">Rules</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/redirect.ws?mod=billing_core&dest=unsubscribe.ws" class="fly">Unsubscribe</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/kbase/view.ws?guid=password_support" class="fly">Password Problems</a></li>
<li><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/bugtracker.ws" class="fly last">Submit A Bug Report</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p11"><a id="empty" class="top_link"><span>&nbsp;</span></a></li>
<li class="top p7"><a href="https://create.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/" id="register" class="top_link"><span>Create Account</span></a></li>
<li class="top p8"><a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/loginapplet/login.ws?mod=www&ssl=0&dest=info.ws?game=zombiedawnmulti" id="signIn" class="top_link"><span>Log In</span></a></li>
<li class="top p10">
<div class="top_link" id="lang_div">
<a id="countrydrop" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws">
<span>
<img alt="English" src="../../a=199/img/images/layout/en.gif">
<div id="dropArrow"></div>
</span>
<!--[if gt IE 6]><!--></a></div><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul id="lang" class="sub">
<li><a class="fly" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img title="English" alt="English" src="../../a=199/img/images/layout/en.gif"></a></li>
<li><a class="fly" href="../../l=1/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img title="Deutsch" alt="Deutsch" src="../../a=199/img/images/layout/de.gif"></a></li>
<li><a class="fly" href="../../l=2/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img title="Fran&ccedil;ais" alt="Fran&ccedil;ais" src="../../a=199/img/images/layout/fr.gif"></a></li>
<li><a class="fly last" href="../../l=3/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img title="Portugu&ecirc;s (BR)" alt="Portugu&ecirc;s (BR)" src="../../a=199/img/images/layout/br.gif"></a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a></div><![endif]-->
</li>
</ul>
</div>
<br class="clear" />
</div>
<div id="page_content">

<a name="info"></a>
<div class="section" id="info" style="">
<div class="sectionHeader">
<div class="sectionHeaderRight">
<div class="sectionTitle">
<span class="sectionTrail">
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws">Games</a> &gt;
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws?genreBox=strategy">Strategy</a> &gt;
<a onclick="suffixize(this)" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/zombiedawnmulti/play.ws">Zombie Dawn Multiplayer</a> &gt;
More Info
</span>
<span class="sectionServerlist">
<a style="text-decoration: underline; font-weight: normal;" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/zombiedawnmulti/serverlist.ws">Server List</a>
</span>

</div>
</div>
</div>
<div class="sectionBorder">
<div class="sectionBackground">
<div class="sectionContent" style="">
<div class="sectionContentContainer">
<div class="intro">
<div class="introDescription">
<div>
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/gamelist.ws?genreBox=strategy"><span class="genre">Strategy</span></a><br>
Capture humans for your diabolical research...before other zombies do!
</div>
</div>
<a class="buttonWide" href="#description"><div>Description</div></a><br />
<a class="buttonWide" href="#faqs"><div>FAQs</div></a><br />
<a class="buttonWide" href="https://create.funorb.com/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/"><div>Create Free Account</div></a><br />
<a onclick="suffixize(this)" class="buttonPlayBig" href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/zombiedawnmulti/play.ws"></a>
</div>

<a name="screenshots"></a>
<div class="subsection" id="screenshots" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Screenshots
</div>
</div>
<div class="subsectionContent">
<script type="text/javascript">
  document.write('<img id="screenshotsImage" class="screenshotsImage" src="../../a=199/img/images/game/zombiedawnmulti/screen1.jpg" alt="In-game screenshot" onLoad="imageTimer(this.id)" />');
 </script>
<noscript>
<iframe name="screenshotsFrame" class="screenshotsFrame" id="screenshotsFrame" scrolling="no" frameBorder="0" src="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/display_screenshot.ws?dirname=zombiedawnmulti&filename=screen1">
</iframe>
</noscript>
<div id="screenshotsThumbs">
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/display_screenshot.ws?dirname=zombiedawnmulti&filename=screen1" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 0);" class="screenshotsThumb" style="background-image: url(../../a=199/img/images/game/zombiedawnmulti/screen1_thumb.jpg?1);">
<div id="screenshotsLoading0"></div>
</a>
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/display_screenshot.ws?dirname=zombiedawnmulti&filename=screen2" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 1);" class="screenshotsThumb" style="background-image: url(../../a=199/img/images/game/zombiedawnmulti/screen2_thumb.jpg?1);">
<div id="screenshotsLoading1"></div>
</a>
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/display_screenshot.ws?dirname=zombiedawnmulti&filename=screen3" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 2);" class="screenshotsThumb" style="background-image: url(../../a=199/img/images/game/zombiedawnmulti/screen3_thumb.jpg?1);">
<div id="screenshotsLoading2"></div>
</a>
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/display_screenshot.ws?dirname=zombiedawnmulti&filename=screen4" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 3);" class="screenshotsThumb" style="background-image: url(../../a=199/img/images/game/zombiedawnmulti/screen4_thumb.jpg?1);">
<div id="screenshotsLoading3"></div>
</a>
</div>
</div>
</div>

<a name="benefits"></a>
<div class="subsection" id="benefits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Zombie Dawn Multi Members' Benefits
</div>
</div>
<div class="subsectionContent">
<div class="benefitsPadding"></div>
<div class="benefitsContent">
<div class="benefitsList">
<ul>
<li>Take on other overlords</li>
<li>Research new traits and power-ups</li>
<li>Discover power-up modifiers</li>
<li>Loads of extra Achievements</li>
<li>Fullscreen mode</li>
<li>No adverts during gameplay</li>
</ul>
</div>
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="buttonSubscribe"></a>
</div>
</div>
</div>
<br class="clear" />

<a name="description"></a>
<div class="subsection" id="description" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Description
</div>
</div>
<div class="subsectionContent">
<div>
<p>In the events of Zombie Dawn, the Overlord (you) managed to zombify and take over most of the world. The problem now is that there aren't many humans left to munch on, so the zombies have started to fight among themselves over this increasingly rare resource.</p>
<p>In Zombie Dawn Multiplayer: Fight of the Living Dead, it's up to you to lead your horde of undead against other overlords in a real-time strategic race to capture and/or zombify as many of the remaining humans as possible. Doing so will earn you Research Points, with which you'll discover some awesome new power-ups, traits and modifiers. Using these, you'll be able to mould your rotting mob to fit your style of play, and better fend off those lesser overlords.</p>
</div>
</div>
</div>
<a name="top_of_page"></a>

<a name="faqs"></a>
<div class="subsection" id="faqs" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
FAQs
</div>
</div>
<div class="subsectionContent">
<div class="faqsList">
<ol>
<li><a href="#faqs_q1">How can I research items faster?</a></li>
<li><a href="#faqs_q2">Can I change my controls so I can right-click to move my zombies?</a></li> <li><a href="#faqs_spec">What are the minimum specifications for this game?</a></li>
</ol>
</div>
<div class="faqsAnswer">
<a name="faqs_q1"></a>
<h3>1. How can I research items faster?</h3>
<p>If you're trying to research something in a hurry, you should unequip any other traits and powerups that you don't really need to win matches - particularly ones that have already been fully researched. This will mean that any Research Points you earn are spread less thinly.</p>
<div class="hr"></div>
<a name="faqs_q2"></a> <h3>2. Can I change my controls so I can right-click to move my zombies?</h3>
<p>Yes, you can! To change the control setup, go into the in-game menu by pressing 'ESC', then choose the 'Modern' control scheme.</p>
<div class="hr"></div>
<a name="faqs_spec"></a>
<h3>3. What are the minimum specifications for this game?</h3>
<p>The minimum specifications we recommend for this game are:</p>
<ul>
<li>1.0 GHz
<li>128 MB RAM
</ul>
<p>The <b>recommended</b> specifications for getting the most out of this game are:</p>
<ul>
<li>1.5 GHz
<li>256 MB RAM
</ul>
<p>Below is an explanation of the terms in our technical specifications.</p>
<p><b>Megahertz (MHz) / Gigahertz (GHz)</b> is a measure of how fast your computer's processor is. This affects how quickly you can run things like games and applications.</p>
<p><b>Megabytes (MB)</b> are used to measure how much memory your computer has. This affects how quickly your computer runs when using large programs such as games, or when you run a lot of programs at once.</p>
<p>Click <a href="http://www.java.com/getjava" target="_blank">here</a> to get the latest version of Sun Java.</p>
</div>
</div>
</div>

<a name="credits"></a>
<div class="subsection" id="credits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Development Team
</div>
</div>
<div class="subsectionContent">
<div>
<p>
<b>Development:</b> Pedro R,&nbsp;Ben W<br>
<b>Graphics:</b> Adam S,&nbsp;Anthony A,&nbsp;Kristian F,&nbsp;Laura W<br>
<b>Audio:</b> Ian T<br>
<b>Quality Assurance:</b> Joe C,&nbsp;Sally R,&nbsp;Michael T,&nbsp;Alex P<br>
<b>Editing:</b> Stephen R
</p>
<p class="articleBacktotop">
<a href="#top"><img src="../../a=199/img/images/layout/backtotop.gif" alt="Back to the top" title="Back to the top" /></a>
</p>
</div>
</div>
</div>
</div>
</div>
<div class="sectionFooter"><div></div></div>
</div>
</div>
</div>
</div>
<div id="copyRight">
<div id="languagefooter">
Select your language:&nbsp;
<a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img alt="English" src="../../a=199/img/images/layout/en.gif">English</a>
<a href="../../l=1/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img alt="Deutsch" src="../../a=199/img/images/layout/de.gif">Deutsch</a>
<a href="../../l=2/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img alt="Fran&ccedil;ais" src="../../a=199/img/images/layout/fr.gif">Fran&ccedil;ais</a>
<a href="../../l=3/a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/index.ws"><img alt="Portugu&ecirc;s (BR)" src="../../a=199/img/images/layout/br.gif">Portugu&ecirc;s (BR)</a>
</div>
<div class="cr">
<p>
Copyright � 2008 Jagex Ltd. Jagex and FunOrb are registered trademarks of Jagex Limited in the
United Kingdom and trademarks used in other countries of the world.
</p>
<p>
By using our service you are agreeing to our <a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/terms/terms.ws" name="terms">Terms &amp; Conditions</a> and <a href="../../a=199/p=kTMOMOwwxxf0xa-t7zCjUPTFr*3vMKNQnqFs6GY7UBs/privacy/privacy.ws" name="privacy">Privacy Policy</a>.
</p>
</div>
<div id="jagex">
<a href="http://www.jagex.com/" target="_blank"><img src="../../a=199/img/images/layout/jagex_footer.gif" alt="Jagex logo" /></a>
</div>
</div>
</div>
</td>
</tr>
</tbody>
</table>
<script type="text/javascript">
var gaJsHost=(("https:"==document.location.protocol)?"https://ssl.":"http://www.");
document.write(unescape("%3Cscript src='"+gaJsHost+"google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker=_gat._getTracker("UA-2058817-3");
pageTracker._setDomainName("funorb.com");
pageTracker._initData();
pageTracker._trackPageview();
}catch(x){}
</script>

</body>
</html>