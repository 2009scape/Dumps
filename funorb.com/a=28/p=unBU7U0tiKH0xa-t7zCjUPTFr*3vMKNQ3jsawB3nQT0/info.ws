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
  /*\*/@import url(../../a=28/css/global-22.css);/**/
 </style>
<!--[if lt IE 7]>
<style type="text/css" media="screen">@import url(../../a=28/css/ieFix-2.css);</style>
<![endif]-->

<!--[if IE]>
<style type="text/css">
 @media all {
  IE\:clientCaps {behavior:url(#default#clientcaps)}
 }
</style>
<IE:clientCaps ID="oClientCaps" />
<![endif]-->
<script type="text/javascript">
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
 /*\*/@import url("../../a=28/css/info-7.css");/**/
 .intro {
  background-image: url(../../img/images/game/arcanistsmulti/intro.jpg);
 }
 .buttonSubscribe {
  background-image: url(../../img/images/info/button_subscribe_225.gif);
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
images[0] = '../../img/images/game/arcanistsmulti/screen1.jpg?1';
images[1] = '../../img/images/game/arcanistsmulti/screen2.jpg?1';
images[2] = '../../img/images/game/arcanistsmulti/screen3.jpg?1';
images[3] = '../../img/images/game/arcanistsmulti/screen4a.jpg?1';
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
<div id="affiliate">

<a id="logo" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws" ><b>
<img src="../../img/images/layout/logo_funorb.jpg" alt="FunOrb" />
</b></a>
<a href="http://www.wildgames.com" target="_blank">
<img id="afflogo" src="../../img/affil/partners/fog.gif" alt="FOG" />
</a>
</div>
<div class="clear"></div>
<ul class="menu">
<li class="top p1"><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws" id="home" class="top_link"><span>Home</span></a></li>
<li class="top p2"><a id="games" class="top_link" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws"><span>Games</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws" class="fly">All Games</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws?playerBox=1" class="fly">Single-Player Games</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws?playerBox=2" class="fly">Multiplayer Games</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/options.ws" class="fly last">Java Options</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p3"><a id="account" class="top_link" href="https://create.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/"><span>Join</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="https://create.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" class="fly">Create Free Account</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/redirect.ws?mod=billing_core&amp;dest=paymentoptions.ws" class="fly">Subscribe to FunOrb</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/members.ws" class="fly">Members' Benefits</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/account_management.ws" class="fly last">Account Management</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p4"><a id="forums" class="top_link" href="http://focommunity.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/"><span>Community</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="http://focommunity.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" class="fly">Community Home</a></li>
<li><a href="
http://forum-fo.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/forums.ws" class="fly">Forums</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/kbase/view.ws?guid=dev_diary" class="fly">Developer Diaries</a></li>
<li><a href="http://achievements.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" class="fly">Achievements</a></li>
<li><a href="http://hiscore-fo.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" class="fly">Highscores &amp; Ratings</a></li>
<li><a href="http://orbcoins.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" class="fly last">Orb Downloads</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p5"><a id="help" class="top_link" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/kbase/view.ws?guid=help"><span>Help</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/kbase/view.ws?guid=customer_support" class="fly">Customer Support</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/parents.ws" class="fly">Parents' Guide</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/redirect.ws?mod=billing_core&amp;dest=unsubscribe.ws" class="fly">Unsubscribe</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/kbase/view.ws?guid=rules_of_conduct" class="fly">Rules</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/kbase/view.ws?guid=password_support" class="fly">Password Problems</a></li>
<li><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/bugtracker.ws" class="fly last">Submit A Bug Report</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p11"><a id="empty" class="top_link"><span>&nbsp;</span></a></li>
<li class="top p7"><a href="https://create.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/" id="register" class="top_link"><span>Create Account</span></a></li>
<li class="top p8"><a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/loginapplet/login.ws?mod=www&amp;ssl=0&amp;dest=info.ws?game=arcanistsmulti" id="signIn" class="top_link"><span>Log In</span></a></li>
<li class="top p10">
<div class="top_link" id="lang_div">
<a id="countrydrop" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws">
<span>
<img alt="English" src="../../img/images/layout/en.gif">
<span id="dropArrow"></span>
</span>
<!--[if gt IE 6]><!--></a></div><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul id="lang" class="sub">
<li><a class="fly" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img title="English" alt="English" src="../../img/images/layout/en.gif"></a></li>
<li><a class="fly" href="../../l=1/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img title="Deutsch" alt="Deutsch" src="../../img/images/layout/de.gif"></a></li>
<li><a class="fly" href="../../l=2/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img title="Fran&ccedil;ais" alt="Fran&ccedil;ais" src="../../img/images/layout/fr.gif"></a></li>
<li><a class="fly last" href="../../l=3/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img title="Portugu&ecirc;s (BR)" alt="Portugu&ecirc;s (BR)" src="../../img/images/layout/br.gif"></a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a></div><![endif]-->
</li>
</ul>
</div>
<br class="clear" />
</div>
<div id="page_content">

<a name="info"></a>
<div class="section" id="info" >
<div class="sectionHeader">
<div class="sectionHeaderRight">
<div class="sectionTitle">
<span class="sectionTrail">
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws">Games</a> &gt;
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws?genreBox=strategy">Strategy</a> &gt;
<a onclick="suffixize(this)" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/arcanistsmulti/play.ws">Arcanists</a> &gt;
More Info
</span>
<span class="sectionServerlist">
<a style="text-decoration: underline; font-weight: normal;" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/arcanistsmulti/serverlist.ws">Server List</a>
</span>

</div>
</div>
</div>
<div class="sectionBorder">
<div class="sectionBackground">
<div class="sectionContent" >
<div class="sectionContentContainer">
<div class="intro">
<div class="introDescription">
<div>
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/gamelist.ws?genreBox=strategy"><span class="genre">Strategy</span></a><br>
Wield powerful spells in this arcane online tournament. </div>
</div>
<a class="buttonWide" href="#description"><div>Description</div></a><br />
<a class="buttonWide" href="#faqs"><div>FAQs</div></a><br />
<a class="buttonWide" href="https://create.funorb.com/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/"><div>Create Free Account</div></a><br />
<a onclick="suffixize(this)" class="buttonPlayBig" href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/arcanistsmulti/play.ws"></a>
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
  document.write('<img id="screenshotsImage" class="screenshotsImage" src="../../img/images/game/arcanistsmulti/screen1.jpg" alt="In-game screenshot" onLoad="imageTimer(this.id)" />');
 </script>
<noscript>
<iframe name="screenshotsFrame" class="screenshotsFrame" id="screenshotsFrame" scrolling="no" frameBorder="0" src="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/display_screenshot.ws?game=arcanistsmulti&screenshot=screen1">
</iframe>
</noscript>
<div id="screenshotsThumbs">
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/display_screenshot.ws?game=arcanistsmulti&screenshot=screen1" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 0);" class="screenshotsThumb" style="background-image: url(../../img/images/game/arcanistsmulti/screen1_thumb.jpg?1);">
<div id="screenshotsLoading0"></div>
</a>
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/display_screenshot.ws?game=arcanistsmulti&screenshot=screen2" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 1);" class="screenshotsThumb" style="background-image: url(../../img/images/game/arcanistsmulti/screen2_thumb.jpg?1);">
<div id="screenshotsLoading1"></div>
</a>
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/display_screenshot.ws?game=arcanistsmulti&screenshot=screen3" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 2);" class="screenshotsThumb" style="background-image: url(../../img/images/game/arcanistsmulti/screen3_thumb.jpg?1);">
<div id="screenshotsLoading2"></div>
</a>
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/display_screenshot.ws?game=arcanistsmulti&screenshot=screen4a" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 3);" class="screenshotsThumb" style="background-image: url(../../img/images/game/arcanistsmulti/screen4a_thumb.jpg?1);">
<div id="screenshotsLoading3"></div>
</a>
</div>
</div>
</div>

<a name="benefits"></a>
<div class="subsection" id="benefits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Arcanists Members' Benefits
</div>
</div>
<div class="subsectionContent">
<div class="benefitsPadding"></div>
<div class="benefitsContent">
<div class="benefitsList">
<ul>

<li>Compete in Rated games</li>
<li>Acquire extra costumes</li>
<li>Access to all the spellbooks</li>
<li>Cast world-destroying spells</li>
<li>Fullscreen mode</li>
<li>No adverts during gameplay</li>
</ul>
</div>
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="buttonSubscribe"></a>
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
<p>Arcanists is a multiplayer strategy game where you get to design and train your very own Arcanist, and then compete in the Arcane Tournament! Every rated game you win earns you more wands, which you can use to expand your spellbook, increasing your flexibility and power. </p>
<p> Battle with players from all over the world in six different arenas, each with their own dangers and strategies to perfect. Personalise your character by gaining achievements and choose from over 1 million combinations. </p>
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
<li><a href="#faqs_q1">How do I change my costume?</a></li>
<li><a href="#faqs_q2">How do I change my spellbook?</a></li>
<li><a href="#faqs_q3">How do I earn more wands?</a></li>
<li><a href="#faqs_q4">Is there anywhere to test my spells before I use them?</a></li>
<li><a href="#faqs_q5">I keep on losing games, what should I do?</a></li>
<li><a href="#faqs_spec">What are the minimum specifications for this game?</a></li>
</ol>
</div>
<div class="faqsAnswer">
<a name="faqs_q1"></a>
<h3>1. How do I change my costume?</h3>
<p>Enter the 'Character Creation' screen from the main menu and select
what you want to wear. More costumes are unlocked as you gain Achievements.
</p>
<div class="hr"></div>
<a name="faqs_q2"></a>
<h3>2. How do I change my spellbook?</h3>
<p>As you earn wands from playing ranked games against other players you
will be able to purchase more spells from the 'Spell Selection' screen.
A new book costs 5 wands, and spells cost between 2 and 3 wands apiece.</p>
<div class="hr"></div>
<a name="faqs_q3"></a>
<h3>3. How do I earn more wands?</h3>
<p>You earn the most wands by playing ranked games against more players at once. More risk
equals more rewards; however, if you resign from a game before it has finished, you will not receive any wands, so make sure you keep playing until the end!</p>
<div class="hr"></div>
<a name="faqs_q4"></a>
<h3>4. Is there anywhere to test my spells before I use them?</h3>
<p>At the end of the tutorial there is a sandbox where you have access to your
character's current spellbook. Make sure to try out your spells before
you head into battle.</p>
<div class="hr"></div>
<a name="faqs_q5"></a>
<h3>5. I keep on losing games; what should I do?</h3>
<p>Practise with your spells in the sandbox or play friendly games
to gain experience before you enter the arena.
</p>
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
<b>Development:</b> Thomas D<br>
<b>Graphics:</b> Anthony A,&nbsp;Kristian F,&nbsp;Laura W<br>
<b>Audio:</b> Ian T,&nbsp;Adam B,&nbsp;Chris J<br>
<b>Quality Assurance:</b> Joe C,&nbsp;Michael T,&nbsp;Craig S,&nbsp;Karl R,&nbsp;Thomas H,&nbsp;Kevin D<br>
<b>Editing:</b> Stephen R
</p>
<p class="articleBacktotop">
<a href="#top"><img src="../../img/images/layout/backtotop.gif" alt="Back to the top" title="Back to the top" /></a>
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
<a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img alt="English" src="../../img/images/layout/en.gif">English</a>
<a href="../../l=1/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img alt="Deutsch" src="../../img/images/layout/de.gif">Deutsch</a>
<a href="../../l=2/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img alt="Fran&ccedil;ais" src="../../img/images/layout/fr.gif">Fran&ccedil;ais</a>
<a href="../../l=3/a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/index.ws"><img alt="Portugu&ecirc;s (BR)" src="../../img/images/layout/br.gif">Portugu&ecirc;s (BR)</a>
</div>
<div class="cr">
<p>
Copyright � 2009 Jagex Ltd. Jagex and FunOrb are registered trademarks of Jagex Limited in the
United Kingdom and trademarks used in other countries of the world.
</p>
<p>
By using our service you are agreeing to our <a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/terms/terms.ws" name="terms">Terms &amp; Conditions</a> and <a href="../../a=28/p=H1eD6I*BgFf0xa-t7zCjUPTFr*3vMKNQYowBvqQh3Fs/privacy/privacy.ws" name="privacy">Privacy Policy</a>.
</p>
</div>
<div id="jagex">
<a href="http://www.jagex.com/" target="_blank"><img src="../../img/images/layout/jagex_footer.gif" alt="Jagex logo" /></a>
</div>
</div>
</div>
</td>
</tr>
</tbody>
</table>