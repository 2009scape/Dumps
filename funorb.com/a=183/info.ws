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
<meta name="Copyright" content="Copyright 1999 - 2009 Jagex Ltd, www.jagex.com">
<meta name="ROBOTS" content="INDEX, FOLLOW">
<meta name="classification" content="GENERAL">
<meta name="rating" content="General">
<meta name="Distribution" content="global">
<meta name="Identifier-URL" content="http://www.funorb.com">
<style type="text/css" media="screen">
  /*\*/@import url(../a=183/css/global-20.css);/**/
 </style>
<!--[if lt IE 7]>
<style type="text/css" media="screen">@import url(../a=183/css/ieFix-1.css);</style>
<![endif]-->
<script type="text/javascript" src="../a=183/css/layout.ws"></script>

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
 /*\*/@import url("../a=183/css/info-6.css");/**/
 .intro {
  background-image: url(../a=183/img/images/game/zombiedawn/intro.jpg);
 }
 .buttonSubscribe {
  background-image: url(../a=183/img/images/info/button_subscribe_225.gif);
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
images[0] = '../a=183/img/images/game/zombiedawn/screen1.jpg?1';
images[1] = '../a=183/img/images/game/zombiedawn/screen2.jpg?1';
images[2] = '../a=183/img/images/game/zombiedawn/screen3.jpg?1';
images[3] = '../a=183/img/images/game/zombiedawn/screen4.jpg?1';
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

<h1 id="logo">
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws" ><b>
<script type="text/javascript">
 var I="../a=183/img";
 document.write('<img src="'+I+'/images/layout/logo_funorb_aog_'+Math.ceil(Math.random()*6)+'.png" alt="FunOrb" />');
</script>
<noscript>
<img src="../a=183/img/images/layout/logo_funorb_aog.png" alt="FunOrb" />
</noscript>
</b></a>
</h1>
<div id="shell">
<div class="lft"></div>
<div class="rght"></div>
<div id="teleText">

<h1 id="welcomeText">Welcome to FunOrb - The Best in Free Online Games</h1>
<span id="teletext_inner">
To gain access to some of our multiplayer games, highscore tables and Achievements, please create an account. It's quick, easy and absolutely FREE!</span>
<script type="text/javascript" src="http://fomessenger.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/messengercommon0.js"></script>
<script type="text/javascript" src="http://fomessenger.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/messenger.js"></script>

</div>
</div>
</div>
<div class="clear"></div>
<ul class="menu">
<li class="top p1"><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws" id="home" class="top_link"><span>Home</span></a></li>
<li class="top p2"><a id="games" class="top_link" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws"><span>Games</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws" class="fly">All Games</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws?playerBox=1" class="fly">Single-Player Games</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws?playerBox=2" class="fly">Multiplayer Games</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/options.ws" class="fly last">Java Options</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p3"><a id="account" class="top_link" href="https://create.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/"><span>Join</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<ul class="sub">
<li><a href="https://create.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" class="fly">Create Free Account</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="fly">Subscribe to FunOrb</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/members.ws" class="fly last">Members' Benefits</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p4"><a id="forums" class="top_link" href="http://focommunity.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/"><span>Community</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="http://focommunity.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" class="fly">Community Home</a></li>
<li><a href="http://forum-fo.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/forums.ws" class="fly">All Forums</a></li>
<li><a href="http://forum-fo.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/forums.ws?0,1" class="fly">Announcements</a></li>
<li><a href="http://achievements.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" class="fly">Achievements</a></li>
<li><a href="http://hiscore-fo.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" class="fly">Highscores &amp; Ratings</a></li>
<li><a href="http://orbcoins.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" class="fly last">Orb Downloads</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p5"><a id="help" class="top_link" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/kbase/view.ws?guid=help"><span>Help</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/kbase/view.ws?guid=customer_support" class="fly">Customer Support</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/parents.ws" class="fly">Parents' Guide</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/kbase/view.ws?guid=rules_of_conduct" class="fly">Rules</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/redirect.ws?mod=billing_core&dest=unsubscribe.ws" class="fly">Unsubscribe</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/kbase/view.ws?guid=password_support" class="fly">Password Problems</a></li>
<li><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/bugtracker.ws" class="fly last">Submit A Bug Report</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p11"><a id="empty" class="top_link"><span>&nbsp;</span></a></li>
<li class="top p7"><a href="https://create.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/" id="register" class="top_link"><span>Create Account</span></a></li>
<li class="top p8"><a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/loginapplet/login.ws?mod=www&ssl=0&dest=info.ws?game=zombiedawn" id="signIn" class="top_link"><span>Log In</span></a></li>
<li class="top p10">
<div class="top_link" id="lang_div">
<a id="countrydrop" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws">
<span>
<img alt="English" src="../a=183/img/images/layout/en.gif">
<div id="dropArrow"></div>
</span>
<!--[if gt IE 6]><!--></a></div><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul id="lang" class="sub">
<li><a class="fly" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img title="English" alt="English" src="../a=183/img/images/layout/en.gif"></a></li>
<li><a class="fly" href="../l=1/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img title="Deutsch" alt="Deutsch" src="../a=183/img/images/layout/de.gif"></a></li>
<li><a class="fly" href="../l=2/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img title="Fran&ccedil;ais" alt="Fran&ccedil;ais" src="../a=183/img/images/layout/fr.gif"></a></li>
<li><a class="fly last" href="../l=3/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img title="Portugu&ecirc;s (BR)" alt="Portugu&ecirc;s (BR)" src="../a=183/img/images/layout/br.gif"></a></li>
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
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws">Games</a> &gt;
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws?genreBox=strategy">Strategy</a> &gt;
<a onclick="suffixize(this)" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/zombiedawn/play.ws">Zombie Dawn</a> &gt;
More Info
</span>
<span class="sectionServerlist">
<a style="text-decoration: underline; font-weight: normal;" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/zombiedawn/serverlist.ws">Server List</a>
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
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/gamelist.ws?genreBox=strategy"><span class="genre">Strategy</span></a><br>
Control hordes of zombie minions, wreak havoc on the 'non-deads' and take over the world!
</div>
</div>
<a class="buttonWide" href="#description"><div>Description</div></a><br />
<a class="buttonWide" href="#faqs"><div>FAQs</div></a><br />
<a class="buttonWide" href="https://create.funorb.com/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/"><div>Create Free Account</div></a><br />
<a onclick="suffixize(this)" class="buttonPlayBig" href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/zombiedawn/play.ws"></a>
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
  document.write('<img id="screenshotsImage" class="screenshotsImage" src="../a=183/img/images/game/zombiedawn/screen1.jpg" alt="In-game screenshot" onLoad="imageTimer(this.id)" />');
 </script>
<noscript>
<iframe name="screenshotsFrame" class="screenshotsFrame" id="screenshotsFrame" scrolling="no" frameBorder="0" src="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/display_screenshot.ws?dirname=zombiedawn&filename=screen1">
</iframe>
</noscript>
<div id="screenshotsThumbs">
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/display_screenshot.ws?dirname=zombiedawn&filename=screen1" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 0);" class="screenshotsThumb" style="background-image: url(../a=183/img/images/game/zombiedawn/screen1_thumb.jpg?1);">
<div id="screenshotsLoading0"></div>
</a>
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/display_screenshot.ws?dirname=zombiedawn&filename=screen2" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 1);" class="screenshotsThumb" style="background-image: url(../a=183/img/images/game/zombiedawn/screen2_thumb.jpg?1);">
<div id="screenshotsLoading1"></div>
</a>
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/display_screenshot.ws?dirname=zombiedawn&filename=screen3" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 2);" class="screenshotsThumb" style="background-image: url(../a=183/img/images/game/zombiedawn/screen3_thumb.jpg?1);">
<div id="screenshotsLoading2"></div>
</a>
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/display_screenshot.ws?dirname=zombiedawn&filename=screen4" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 3);" class="screenshotsThumb" style="background-image: url(../a=183/img/images/game/zombiedawn/screen4_thumb.jpg?1);">
<div id="screenshotsLoading3"></div>
</a>
</div>
</div>
</div>

<a name="benefits"></a>
<div class="subsection" id="benefits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Zombie Dawn Members' Benefits
</div>
</div>
<div class="subsectionContent">
<div class="benefitsPadding"></div>
<div class="benefitsContent">
<div class="benefitsList">
<ul>
<li>24 levels of zombie-filled mayhem</li>
<li>3 varied bonus levels</li>
<li>Conquer the White House</li>
<li>Loads of extra Achievements</li>
<li>Fullscreen mode</li>
<li>No adverts during gameplay</li>
</ul>
</div>
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="buttonSubscribe"></a>
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
<p>The undead apocalypse has arrived...but, fortunately, you're the one in charge! Command your zombie horde through 24 brain chomping levels of puzzle-ing mayhem, with the sole aim of storming the White House and conquering humanity. Zombie Dawn is full of action, strategy, puzzles and sheer undead fun.</p>
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
<li><a href="#faqs_q1">What is the goal of Zombie Dawn?</a></li>
<li><a href="#faqs_q2">What power-ups are there?</a></li>
<li><a href="#faqs_q3">I've messed up the level; what should I do?</a></li>
<li><a href="#faqs_q4">Where do the soldiers come from?</a></li>
<li><a href="#faqs_q5">How do I get a better score?</a></li>
<li><a href="#faqs_spec">What are the minimum specifications for this game?</a></li>
</ol>
</div>
<div class="faqsAnswer">
<a name="faqs_q1"></a>
<h3>1. What is the goal of Zombie Dawn?</h3> <p>The goal on each level is to trap all the humans and turn them into zombies. The undead aren't the most obedient creatures and, once they get close enough to a yummy survivor, they'll uncontrollably start lunging at them. Get them to zombify every remaining human on each level to win!</p>
<div class="hr"></div>
<a name="faqs_q2"></a>
<h3>2. What power-ups are there?</h3>
<p>There are eight power-ups in total, which are:</p>
<ul>
<li>Curse - instantly turns one human into a zombie</li>
<li>Detonate - explodes your zombie and anything else near it</li>
<li>Disguise - humans won't run away...until it's too late</li> <li>Meltdown - your zombie melts into a pool of sticky goo, slowing humans down</li>
<li>Phantom - leaves a ghostly imprint that humans treat as a real zombie</li>
<li>Screech - roots humans to the spot in fear, for 15 seconds</li>
<li>Speed - doubles the shambling speed of your zombie</li>
<li>Tough - it will take three shots to kill a tough zombie</li>
</ul>
<div class="hr"></div>
<a name="faqs_q3"></a>
<h3>3. I've messed up the level; what should I do?</h3>
<p>You have the option to retry any level, to a maximum of three retries per game. To do so, press 'ESC' to open the pause menu, then click on 'Retry'.</p>
<div class="hr"></div>
<a name="faqs_q4"></a>
<h3>4. Where do the soldiers come from?</h3>
<p>On most levels after the Mall, you'll have to work against the clock to catch all the survivors. Army soldiers are moving through lower floors and underground tunnels to your position... When the time runs out, they will emerge from the hatch on the level.</p>
<div class="hr"></div>
<a name="faqs_q5"></a>
<h3>5. How do I get a better score?</h3>
<p>It's all very well, overwhelming those squishy humans with sheer numbers, but some of them can take out a few of your minions in return. Try to find a sneakier way to clear each level - the more zombies you keep alive - or moving, at least - the more you will score. Also, playing on Hard will net you 50% more points for any remaining time or zombies.</p>
<div class="hr"></div>
<a name="faqs_spec"></a>
<h3>6. What are the minimum specifications for this game?</h3>
<p>The minimum specifications we recommend for this game are:</p>
<ul>
<li>500 MHz
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
<b>Development:</b> Tom R<br>
<b>Graphics:</b> Anthony A,&nbsp;Kristian F,&nbsp;Laura W<br>
<b>Audio:</b> Ian T<br>
<b>Quality Assurance:</b> Joe C,&nbsp;Michael T<br>
<b>Editing:</b> Stephen R
</p>
<p class="articleBacktotop">
<a href="#top"><img src="../a=183/img/images/layout/backtotop.gif" alt="Back to the top" title="Back to the top" /></a>
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
<a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img alt="English" src="../a=183/img/images/layout/en.gif">English</a>
<a href="../l=1/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img alt="Deutsch" src="../a=183/img/images/layout/de.gif">Deutsch</a>
<a href="../l=2/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img alt="Fran&ccedil;ais" src="../a=183/img/images/layout/fr.gif">Fran&ccedil;ais</a>
<a href="../l=3/a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/index.ws"><img alt="Portugu&ecirc;s (BR)" src="../a=183/img/images/layout/br.gif">Portugu&ecirc;s (BR)</a>
</div>
<div class="cr">
<p>
Copyright � 2009 Jagex Ltd. Jagex and FunOrb are registered trademarks of Jagex Limited in the
United Kingdom and trademarks used in other countries of the world.
</p>
<p>
By using our service you are agreeing to our <a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/terms/terms.ws" name="terms">Terms &amp; Conditions</a> and <a href="../a=183/p=j4JSU8UHdoj0xa-t7zCjUPTFr*3vMKNQ8mjqF9zb6BY/privacy/privacy.ws" name="privacy">Privacy Policy</a>.
</p>
</div>
<div id="jagex">
<a href="http://www.jagex.com/" target="_blank"><img src="../a=183/img/images/layout/jagex_footer.gif" alt="Jagex logo" /></a>
</div>
</div>
</div>
</td>
</tr>
</tbody>
</table>