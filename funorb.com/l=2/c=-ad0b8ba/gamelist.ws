<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="
fr" xmlns:IE>
<head>
<title>FunOrb : jeux en ligne gratuits</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Language" content="
fr">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="PRAGMA" content="NO-CACHE">
<meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
<meta name="keywords" content="Jeux en ligne gratuits, jeux de r�flexion, puzzle games, jeux de plate-forme, jeux d'arcade, jeux de tir, jeux d'action, jeux Java, joueur occasionnel, jeux de course, jeux automobile, jeux de mots, jeux r�tro, jeux classiques, jeux Web, jeux de strat�gie, jeux multijoueur, arcanistes, Jagex">
<meta name="description" content="FunOrb, espace jeux en ligne gratuit de Jagex, le cr�ateur de RuneScape. Des jeux de r�flexion, de strat�gie, d'action, de tir, de mots, de course et bien plus encore !">
<meta name="title" content="FunOrb - Free Online Games">
<meta name="Author" content="www.jagex.com">
<meta name="Copyright" content="Copyright 1999 - 2008 Jagex Ltd, www.jagex.com">
<meta name="ROBOTS" content="INDEX, FOLLOW">
<meta name="classification" content="GENERAL">
<meta name="rating" content="General">
<meta name="Distribution" content="global">
<meta name="Identifier-URL" content="http://www.funorb.com">
<style type="text/css" media="screen">
  /*\*/@import url(../../l=2/css/global-10.css);/**/
 </style>
<!--[if lt IE 7]>
<style type="text/css" media="screen">@import url(../../l=2/css/ieFix-1.css);</style>
<![endif]-->
<script type="text/javascript" src="../../l=2/css/layout.ws"></script>

<style type="text/css" media="screen">
 /*\*/@import url("../../l=2/css/gamelist-2.css");/**/
</style>
<script type="text/javascript">
 function ajax_debug(text) {
 if(document.getElementById("javascript-debug-pane")) document.getElementById("javascript-debug-pane").value+=text + "\n";
}
function httpRequest() {
 // Create the requestHandler
 try {
  this.requestHandler=new ActiveXObject("Msxml2.XMLHTTP");
 }
 catch(e1) {
  try {
   this.requestHandler=new ActiveXObject("Microsoft.XMLHTTP");
  }
  catch(e2) {
   this.requestHandler=false;
  }
 }
 if(!this.requestHandler && window.createRequest) {
  try {
   this.requestHandler=window.createRequest();
  }
  catch(e) {
   this.requestHandler=false;
  }
 }
 if(!this.requestHandler && typeof(XMLHttpRequest)!='undefined') {
  try {
   this.requestHandler=new XMLHttpRequest();
  }
  catch(e) {
   this.requestHandler=false;
  }
 }
 ajax_debug("New httpRequest created");
}
httpRequest.prototype.handleChange=function() {
 //ajax_debug("ReadyState changed to " + this.requestHandler.readyState);
 if(this.requestHandler.readyState==4 && this.callback) this.callback(this.requestHandler.responseText);
}
httpRequest.prototype.get=function(url, callback) {
 ajax_debug("GET " + url + (callback==null ? " (no callback)" : " (with callback)"));
 var copy=this;
 this.requestHandler.onreadystatechange=function() {copy.handleChange();} 
 if(callback) this.callback=callback;
 else this.callback=null;
 this.requestHandler.open("GET", url, true);
 this.requestHandler.send(null);
}
function ajax_describe(what) {
 a="";
 for(part in what) try{a+=part + "=" + what[part] + "\n";} catch(e) {}
 return a;
}
function throwaway_request(url) {
 var req=new httpRequest();
 req.get(url);
}
function callback_request(url, callback) {
 var req=new httpRequest();
 req.get(url, callback);
}
</script>
<script type="text/javascript">
 var current_game;

 function genre(id_in, next_sibling_id_in) {
  this.id = id_in;
  this.next_sibling_id = next_sibling_id_in;
 }

 // Build these arrays on load. (NB: The loops are ws loops)
 var multi = new Array(32);
 var genres = new Array(32);
 
  
  multi[0] = false;
  genres[0] = new Array(1);
  
   genres[0][0] = new genre(3, 4);
  
 
  
  multi[1] = true;
  genres[1] = new Array(1);
  
   genres[1][0] = new genre(7, 8);
  
 
  
  multi[2] = false;
  genres[2] = new Array(1);
  
   genres[2][0] = new genre(4, 5);
  
 
  
  multi[3] = true;
  genres[3] = new Array(1);
  
   genres[3][0] = new genre(6, 7);
  
 
  
  multi[4] = false;
  genres[4] = new Array(2);
  
   genres[4][0] = new genre(1, 2);
  
   genres[4][1] = new genre(2, 3);
  
 
  
  multi[5] = true;
  genres[5] = new Array(1);
  
   genres[5][0] = new genre(1, 2);
  
 
  
  multi[6] = false;
  genres[6] = new Array(2);
  
   genres[6][0] = new genre(1, 2);
  
   genres[6][1] = new genre(5, 6);
  
 
  
  multi[7] = true;
  genres[7] = new Array(1);
  
   genres[7][0] = new genre(1, 2);
  
 
  
  multi[8] = false;
  genres[8] = new Array(1);
  
   genres[8][0] = new genre(5, 6);
  
 
  
  multi[9] = true;
  genres[9] = new Array(1);
  
   genres[9][0] = new genre(7, 8);
  
 
  
  multi[10] = true;
  genres[10] = new Array(1);
  
   genres[10][0] = new genre(7, 8);
  
 
  
  multi[11] = false;
  genres[11] = new Array(2);
  
   genres[11][0] = new genre(1, 2);
  
   genres[11][1] = new genre(3, 4);
  
 
  
  multi[12] = false;
  genres[12] = new Array(1);
  
   genres[12][0] = new genre(5, 6);
  
 
  
  multi[13] = false;
  genres[13] = new Array(2);
  
   genres[13][0] = new genre(3, 4);
  
   genres[13][1] = new genre(1, 2);
  
 
  
  multi[14] = false;
  genres[14] = new Array(1);
  
   genres[14][0] = new genre(3, 4);
  
 
  
  multi[15] = false;
  genres[15] = new Array(2);
  
   genres[15][0] = new genre(7, 8);
  
   genres[15][1] = new genre(3, 4);
  
 
  
  multi[16] = false;
  genres[16] = new Array(2);
  
   genres[16][0] = new genre(8, 9);
  
   genres[16][1] = new genre(3, 4);
  
 
  
  multi[17] = false;
  genres[17] = new Array(1);
  
   genres[17][0] = new genre(1, 2);
  
 
  
  multi[18] = false;
  genres[18] = new Array(2);
  
   genres[18][0] = new genre(1, 2);
  
   genres[18][1] = new genre(3, 4);
  
 
  
  multi[19] = true;
  genres[19] = new Array(1);
  
   genres[19][0] = new genre(7, 8);
  
 
  
  multi[20] = false;
  genres[20] = new Array(2);
  
   genres[20][0] = new genre(1, 2);
  
   genres[20][1] = new genre(7, 8);
  
 
  
  multi[21] = true;
  genres[21] = new Array(1);
  
   genres[21][0] = new genre(3, 4);
  
 
  
  multi[22] = false;
  genres[22] = new Array(1);
  
   genres[22][0] = new genre(3, 4);
  
 
  
  multi[23] = false;
  genres[23] = new Array(1);
  
   genres[23][0] = new genre(2, 3);
  
 
  
  multi[24] = false;
  genres[24] = new Array(2);
  
   genres[24][0] = new genre(5, 6);
  
   genres[24][1] = new genre(1, 2);
  
 
  
  multi[25] = false;
  genres[25] = new Array(2);
  
   genres[25][0] = new genre(1, 2);
  
   genres[25][1] = new genre(5, 6);
  
 
  
  multi[26] = false;
  genres[26] = new Array(1);
  
   genres[26][0] = new genre(2, 3);
  
 
  
  multi[27] = false;
  genres[27] = new Array(1);
  
   genres[27][0] = new genre(7, 8);
  
 
  
  multi[28] = true;
  genres[28] = new Array(1);
  
   genres[28][0] = new genre(7, 8);
  
 
  
  multi[29] = false;
  genres[29] = new Array(2);
  
   genres[29][0] = new genre(2, 3);
  
   genres[29][1] = new genre(1, 2);
  
 
  
  multi[30] = false;
  genres[30] = new Array(1);
  
   genres[30][0] = new genre(1, 2);
  
 
  
  multi[31] = false;
  genres[31] = new Array(2);
  
   genres[31][0] = new genre(8, 9);
  
   genres[31][1] = new genre(3, 4);
  
 

 //Filter values: (id, next_sibling_id) pair for the filter genre and an array of pairs for all other genres (indexed by id):
 var filter_genre = new genre(0, 9);
 
 var all_genres = new Array(8*2);
 
  all_genres[1] = new genre(1, 2);
  
  
 
  all_genres[2] = new genre(2, 3);
  
  
 
  all_genres[3] = new genre(3, 4);
  
  
 
  all_genres[4] = new genre(4, 5);
  
  
 
  all_genres[5] = new genre(5, 6);
  
  
 
  all_genres[6] = new genre(6, 7);
  
  
 
  all_genres[7] = new genre(7, 8);
  
  
 
  all_genres[8] = new genre(8, 9);
  
  
 

 function getElementsByName(tagName,name) {
  var allelems = document.getElementsByTagName(tagName);
  var elems = new Array(0);
  for(i=0; i < allelems.length; i++) {
   if(allelems[i].getAttribute('name') == name) { elems.push(allelems[i]); }
  }
  return elems;
 }

 function updateFilters() {
  var gameboxes = getElementsByName('div','gameBox');
  var playerMode = document.getElementById('playerBox').value;
  var genreMode = document.getElementById('genreBox').value;
  var nogames = true;
  for(i=0; i < gameboxes.length; i++) {
   if((playerMode == 1 && multi[i]) || (playerMode == 2 && !multi[i])) {
    gameboxes[i].style.display = 'none';
   } else if(genreMode == 0) {
    gameboxes[i].style.display = 'inline';
    nogames = false;
   } else {
    var display = false;
    for(j=0; j < genres[i].length; j++) {
     if(genres[i][j].id >= all_genres[genreMode].id && genres[i][j].id < all_genres[genreMode].next_sibling_id) {
      display = true;
     }
    }
    if(display) {
     gameboxes[i].style.display = 'inline';
     nogames = false;
    } else {
     gameboxes[i].style.display = 'none';
    }
   }
  }
  var guide = document.getElementById('guide');
  if(nogames) {
   guide.innerHTML = 'Aucun jeu ne correspond � votre recherche. Veuillez effectuer une nouvelle recherche.';
   guide.style.color = '#f00';
  } else {
   guide.innerHTML = 'Veuillez utiliser les menus d�roulants pour s�lectionner le type de jeu qui vous int�resse.';
   guide.style.color = '#DAD6D5';
  }
 }

 function initList() {
  document.getElementById('playerBox').value = 0;
  document.getElementById('genreBox').value = 0;
 }

 window.onload = initList;
</script>
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
<a href="../../l=2/index.ws" id="logo"><span>FunOrb</span></a>
<div id="shell">
<div class="lft"></div>
<div class="rght"></div>
<div id="teleText">

<h1 id="welcomeText">Bienvenue sur FunOrb - Les meilleurs jeux en ligne gratuits</h1>
<span id="teletext_inner">
Pour acc�der � certains jeux multijoueur, aux meilleurs scores et aux exploits, il suffit de cr�er un compte. C'est simple, rapide et GRATUIT !</span>
<script type="text/javascript" src="http://fomessenger.funorb.com/l=2/messengercommon0.js"></script>
<script type="text/javascript" src="http://fomessenger.funorb.com/l=2/messenger.js"></script>

</div>
</div>
</div>
<div class="clear"></div>
<ul class="menu">
<li class="top p1"><a href="../../l=2/index.ws" id="home" class="top_link"><span>Accueil</span></a></li>
<li class="top p2"><a id="games" class="top_link" href="../../l=2/gamelist.ws"><span>Jeux</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<!--[if lte IE 6]><iframe src="#"></iframe><![endif]-->
<ul class="sub">
<li><a href="../../l=2/gamelist.ws" class="fly">Tous les jeux</a></li>
<li><a href="../../l=2/gamelist.ws?playerBox=1" class="fly">Jeux solo</a></li>
<li><a href="../../l=2/gamelist.ws?playerBox=2" class="fly">Jeux multijoueur</a></li>
<li><a href="../../l=2/options.ws" class="fly last">Options Java</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p3"><a id="account" class="top_link" href="https://create.funorb.com/l=2/"><span>S'inscrire</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<ul class="sub">
<li><a href="https://create.funorb.com/l=2/" class="fly">Cr�er un compte gratuit</a></li>
<li><a href="../../l=2/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="fly">S'abonner � FunOrb</a></li>
<li><a href="../../l=2/members.ws" class="fly last">Avantages abonn�</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p4"><a id="forums" class="top_link" href="http://focommunity.funorb.com/l=2/"><span>Communaut�</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<!--[if lte IE 6]><iframe src="#"></iframe><![endif]-->
<ul class="sub">
<li><a href="http://focommunity.funorb.com/l=2/" class="fly">Accueil</a></li>
<li><a href="
http://forum-fo-fr.funorb.com/l=2/forums.ws" class="fly">Tous les forums</a></li>
<li><a href="
http://forum-fo-fr.funorb.com/l=2/forums.ws?0,1" class="fly">Annonces</a></li>
<li><a href="http://achievements.funorb.com/l=2/" class="fly">Exploits</a></li>
<li><a href="http://hiscore-fo.funorb.com/l=2/" class="fly">Highscores &amp; classement</a></li>
<li><a href="http://orbcoins.funorb.com/l=2/" class="fly last">T�l�chargements FunOrb</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p5"><a id="help" class="top_link" href="../../l=2/kbase/view.ws?guid=help"><span>Aide</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<!--[if lte IE 6]><iframe src="#"></iframe><![endif]-->
<ul class="sub">
<li><a href="../../l=2/kbase/view.ws?guid=customer_support" class="fly">Service client�le</a></li>
<li><a href="../../l=2/parents.ws" class="fly">Guide parental</a></li>
<li><a href="../../l=2/kbase/view.ws?guid=rules_of_conduct" class="fly">R�gles</a></li>
<li><a href="../../l=2/redirect.ws?mod=billing_core&dest=unsubscribe.ws" class="fly">Se d�sabonner</a></li>
<li><a href="../../l=2/kbase/view.ws?guid=password_support" class="fly">Probl�mes de mot de passe</a></li>
<li><a href="../../l=2/bugtracker.ws" class="fly last">Signaler un bug</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p11"><a id="empty" class="top_link"><span>&nbsp;</span></a></li>
<li class="top p7"><a href="https://create.funorb.com/l=2/" id="register" class="top_link"><span>Cr�er un compte</span></a></li>
<li class="top p8"><a href="../../l=2/loginapplet/login.ws?mod=www&ssl=0&dest=gamelist.ws" id="signIn" class="top_link"><span>Se connecter</span></a></li>
<li class="top p10">
<div id="lang" class="top_link">
<span>
<a href="../../index.ws">
<img alt="English" src="../../l=2/img/images/layout/en.gif">
</a>
<a href="../../l=1/index.ws">
<img alt="Deutsch" src="../../l=2/img/images/layout/de.gif">
</a>
<a href="../../l=2/index.ws">
<img alt="Fran&ccedil;ais" src="../../l=2/img/images/layout/fr.gif">
</a>
</span>
</div>
</li>
</ul>
</div>
<br class="clear" />
</div>
<div id="page_content">

<a name="common_section"></a>
<div class="section" id="common_section" style="">
<div class="sectionHeader">
<div class="sectionHeaderRight">
<div class="sectionTitle">
Liste des jeux

</div>
</div>
</div>
<div class="sectionBorder">
<div class="sectionBackground">
<div class="sectionContent" style="">
<div class="sectionContainerContent">
<a name="games"></a>
<div class="subsection" id="games" style="">
<div class="subsectionHeader">
<div class="subsectionTitle"><div id="guide">Veuillez utiliser les menus d�roulants pour s�lectionner le type de jeu qui vous int�resse.</div></div>
</div>
<div class="subsectionContent">
<form id="filterform">
<label for="playerBox">Joueurs :</label>
<select onchange="updateFilters()" name="playerBox" id="playerBox">
<option value="0">Tous</option>

<option value="1">Solo</option>

<option value="2">Multijoueur</option>
</select>
<label for="genreBox">Genre :</label>
<select onchange="updateFilters()" name="genreBox" id="genreBox">
<option value="0" selected="selected">Tous</option>

<option id="option1" value="arcade">
Arcade</option>
<script type="text/javascript">document.getElementById('option1').value = 1;</script>

<option id="option2" value="platform">
Plateforme</option>
<script type="text/javascript">document.getElementById('option2').value = 2;</script>

<option id="option3" value="puzzle">
Logique</option>
<script type="text/javascript">document.getElementById('option3').value = 3;</script>

<option id="option4" value="racer">
Course</option>
<script type="text/javascript">document.getElementById('option4').value = 4;</script>

<option id="option5" value="shooter">
Jeux de tir</option>
<script type="text/javascript">document.getElementById('option5').value = 5;</script>

<option id="option6" value="sport">
Sport</option>
<script type="text/javascript">document.getElementById('option6').value = 6;</script>

<option id="option7" value="strategy">
Strat�gie</option>
<script type="text/javascript">document.getElementById('option7').value = 7;</script>

<option id="option8" value="word">
Mots</option>
<script type="text/javascript">document.getElementById('option8').value = 8;</script>
</select>
<input class="button" id="filtersumbit" type="submit" value="Soumettre des filtres">
<script type="text/javascript">document.getElementById('filtersumbit').style.display = 'none';</script>
<span id="multigenre">Certains jeux peuvent appartenir � plusieurs genres.</span>
</form>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link0" id="link0" href="../../l=2/36cardtrick/play.ws">
<img src="../../l=2/img/images/game/36cardtrick/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link0").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link1" id="link1" href="../../l=2/36cardtrick/play.ws">36 Cactus</a></div>
<script language="javascript"> document.getElementById("link1").href+=suffix; </script>
<div class="gamedesc">Un grand classique des jeux de m�moire, en plus �pineux.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=puzzle">Logique</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=36cardtrick"></a>
<a name="link2" id="link2" class="buttonPlaySmall" href="../../l=2/36cardtrick/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link2").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link3" id="link3" href="../../l=2/arcanistsmulti/play.ws">
<img src="../../l=2/img/images/game/arcanistsmulti/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link3").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link4" id="link4" href="../../l=2/arcanistsmulti/play.ws">Arcanistes</a></div>
<script language="javascript"> document.getElementById("link4").href+=suffix; </script>
<div class="gamedesc">Comp�titions de magie et tournois multijoueur.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=arcanistsmulti"></a>
<a name="link5" id="link5" class="buttonPlaySmall" href="../../l=2/arcanistsmulti/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link5").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link6" id="link6" href="../../l=2/holdtheline/play.ws">
<img src="../../l=2/img/images/game/holdtheline/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link6").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link7" id="link7" href="../../l=2/holdtheline/play.ws">As du volant</a></div>
<script language="javascript"> document.getElementById("link7").href+=suffix; </script>
<div class="gamedesc">D�crochez la pole position avec un bolide optimis�.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=racer">Course</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=holdtheline"></a>
<a name="link8" id="link8" class="buttonPlaySmall" href="../../l=2/holdtheline/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link8").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link9" id="link9" href="../../l=2/pool/play.ws">
<img src="../../l=2/img/images/game/pool/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link9").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link10" id="link10" href="../../l=2/pool/play.ws">Billard</a></div>
<script language="javascript"> document.getElementById("link10").href+=suffix; </script>
<div class="gamedesc">Le grand classique des jeux d'adresse</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=sport">Sport</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=pool"></a>
<a name="link11" id="link11" class="buttonPlaySmall" href="../../l=2/pool/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link11").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link12" id="link12" href="../../l=2/bouncedown/play.ws">
<img src="../../l=2/img/images/game/bouncedown/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link12").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link13" id="link13" href="../../l=2/bouncedown/play.ws">Bouncedown</a></div>
<script language="javascript"> document.getElementById("link13").href+=suffix; </script>
<div class="gamedesc">Survivez le plus longtemps sur ces plates-formes.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=bouncedown"></a>
<a name="link14" id="link14" class="buttonPlaySmall" href="../../l=2/bouncedown/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link14").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link15" id="link15" href="../../l=2/brickabrac/play.ws">
<img src="../../l=2/img/images/game/brickabrac/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link15").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link16" id="link16" href="../../l=2/brickabrac/play.ws">Brique � brac</a></div>
<script language="javascript"> document.getElementById("link16").href+=suffix; </script>
<div class="gamedesc">Casse-brique traditionnel avec Brique � brac.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=brickabrac"></a>
<a name="link17" id="link17" class="buttonPlaySmall" href="../../l=2/brickabrac/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link17").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link18" id="link18" href="../../l=2/solknight/play.ws">
<img src="../../l=2/img/images/game/solknight/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link18").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link19" id="link19" href="../../l=2/solknight/play.ws">Chevalier solaire</a></div>
<script language="javascript"> document.getElementById("link19").href+=suffix; </script>
<div class="gamedesc">Prot�gez le syst�me solaire contre des (kilo)tonnes d'ast�ro�des.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=solknight"></a>
<a name="link20" id="link20" class="buttonPlaySmall" href="../../l=2/solknight/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link20").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link21" id="link21" href="../../l=2/dekobloko/play.ws">
<img src="../../l=2/img/images/game/dekobloko/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link21").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link22" id="link22" href="../../l=2/dekobloko/play.ws">Deko Bloko</a></div>
<script language="javascript"> document.getElementById("link22").href+=suffix; </script>
<div class="gamedesc">Parties multijoueur de folie avec des pi�ces qui reviennent vous hanter&nbsp;!</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=dekobloko"></a>
<a name="link23" id="link23" class="buttonPlaySmall" href="../../l=2/dekobloko/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link23").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link24" id="link24" href="../../l=2/drphlogistonsavestheearth/play.ws">
<img src="../../l=2/img/images/game/drphlogistonsavestheearth/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link24").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link25" id="link25" href="../../l=2/drphlogistonsavestheearth/play.ws">Dr P. sauve la Terre</a></div>
<script language="javascript"> document.getElementById("link25").href+=suffix; </script>
<div class="gamedesc">Sauvez la Terre dans ce jeu de tir � d�filement horizontal.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=shooter">Jeu de tir</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=drphlogistonsavestheearth"></a>
<a name="link26" id="link26" class="buttonPlaySmall" href="../../l=2/drphlogistonsavestheearth/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link26").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link27" id="link27" href="../../l=2/dungeonassault/play.ws">
<img src="../../l=2/img/images/game/dungeonassault/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link27").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link28" id="link28" href="../../l=2/dungeonassault/play.ws">Dungeon Assault</a></div>
<script language="javascript"> document.getElementById("link28").href+=suffix; </script>
<div class="gamedesc">D�fendez votre tr�sor. Devenez le roi des dragons.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=dungeonassault"></a>
<a name="link29" id="link29" class="buttonPlaySmall" href="../../l=2/dungeonassault/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link29").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link30" id="link30" href="../../l=2/chess/play.ws">
<img src="../../l=2/img/images/game/chess/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link30").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link31" id="link31" href="../../l=2/chess/play.ws">�checs</a></div>
<script language="javascript"> document.getElementById("link31").href+=suffix; </script>
<div class="gamedesc">Affrontez vos amis dans ce grand classique des jeux de strat�gie.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=chess"></a>
<a name="link32" id="link32" class="buttonPlaySmall" href="../../l=2/chess/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link32").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link33" id="link33" href="../../l=2/geoblox/play.ws">
<img src="../../l=2/img/images/game/geoblox/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link33").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link34" id="link34" href="../../l=2/geoblox/play.ws">Geoblox</a></div>
<script language="javascript"> document.getElementById("link34").href+=suffix; </script>
<div class="gamedesc">Connectez trois blocs de m�me forme ou de m�me couleur.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=geoblox"></a>
<a name="link35" id="link35" class="buttonPlaySmall" href="../../l=2/geoblox/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link35").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link36" id="link36" href="../../l=2/hostilespawn/play.ws">
<img src="../../l=2/img/images/game/hostilespawn/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link36").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link37" id="link37" href="../../l=2/hostilespawn/play.ws">Invasion Alien</a></div>
<script language="javascript"> document.getElementById("link37").href+=suffix; </script>
<div class="gamedesc">D�truisez les hordes d'Aliens.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=shooter">Jeu de tir</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=hostilespawn"></a>
<a name="link38" id="link38" class="buttonPlaySmall" href="../../l=2/hostilespawn/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link38").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link39" id="link39" href="../../l=2/crazycrystals/play.ws">
<img src="../../l=2/img/images/game/crazycrystals/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link39").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link40" id="link40" href="../../l=2/crazycrystals/play.ws">Kristal Folie</a></div>
<script language="javascript"> document.getElementById("link40").href+=suffix; </script>
<div class="gamedesc">Un jeu de r�flexion qui risque de vous faire mal � la t�te.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=puzzle">Logique</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=crazycrystals"></a>
<a name="link41" id="link41" class="buttonPlaySmall" href="../../l=2/crazycrystals/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link41").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link42" id="link42" href="../../l=2/trackcontroller/play.ws">
<img src="../../l=2/img/images/game/trackcontroller/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link42").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link43" id="link43" href="../../l=2/trackcontroller/play.ws">L'aiguilleur</a></div>
<script language="javascript"> document.getElementById("link43").href+=suffix; </script>
<div class="gamedesc">Placez les rails au bon endroit pour terminer votre voie ferr�e.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=puzzle">Logique</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=trackcontroller"></a>
<a name="link44" id="link44" class="buttonPlaySmall" href="../../l=2/trackcontroller/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link44").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link45" id="link45" href="../../l=2/zombiedawn/play.ws">
<img src="../../l=2/img/images/game/zombiedawn/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link45").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link46" id="link46" href="../../l=2/zombiedawn/play.ws">L'arm�e des zombies</a></div>
<script language="javascript"> document.getElementById("link46").href+=suffix; </script>
<div class="gamedesc">Organisez l'invasion des morts-vivants.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=zombiedawn"></a>
<a name="link47" id="link47" class="buttonPlaySmall" href="../../l=2/zombiedawn/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link47").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link48" id="link48" href="../../l=2/lexicominos/play.ws">
<img src="../../l=2/img/images/game/lexicominos/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link48").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link49" id="link49" href="../../l=2/lexicominos/play.ws">Lexicominos</a></div>
<script language="javascript"> document.getElementById("link49").href+=suffix; </script>
<div class="gamedesc">Combien r�ussirez-vous � former de mots avec les blocs en chute&nbsp;?</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=word">Mots</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=lexicominos"></a>
<a name="link50" id="link50" class="buttonPlaySmall" href="../../l=2/lexicominos/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link50").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link51" id="link51" href="../../l=2/minerdisturbance/play.ws">
<img src="../../l=2/img/images/game/minerdisturbance/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link51").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link52" id="link52" href="../../l=2/minerdisturbance/play.ws">Mineur en p�ril</a></div>
<script language="javascript"> document.getElementById("link52").href+=suffix; </script>
<div class="gamedesc">Explorez les profondeurs d'un volcan rempli de tr�sors.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=minerdisturbance"></a>
<a name="link53" id="link53" class="buttonPlaySmall" href="../../l=2/minerdisturbance/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link53").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link54" id="link54" href="../../l=2/monkeypuzzle2/play.ws">
<img src="../../l=2/img/images/game/monkeypuzzle2/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link54").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link55" id="link55" href="../../l=2/monkeypuzzle2/play.ws">Monkey Puzzle 2</a></div>
<script language="javascript"> document.getElementById("link55").href+=suffix; </script>
<div class="gamedesc">Catapultez des noix de coco color�es sur les singes pour les faire tomber.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=monkeypuzzle2"></a>
<a name="link56" id="link56" class="buttonPlaySmall" href="../../l=2/monkeypuzzle2/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link56").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link57" id="link57" href="../../l=2/shatteredplans/play.ws">
<img src="../../l=2/img/images/game/shatteredplans/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link57").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link58" id="link58" href="../../l=2/shatteredplans/play.ws">Offensive galactique</a></div>
<script language="javascript"> document.getElementById("link58").href+=suffix; </script>
<div class="gamedesc">Dominez des mondes et partez � la conqu�te de la galaxie.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=shatteredplans"></a>
<a name="link59" id="link59" class="buttonPlaySmall" href="../../l=2/shatteredplans/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link59").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link60" id="link60" href="../../l=2/orbdefence/play.ws">
<img src="../../l=2/img/images/game/orbdefence/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link60").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link61" id="link61" href="../../l=2/orbdefence/play.ws">Orbe D�fense</a></div>
<script language="javascript"> document.getElementById("link61").href+=suffix; </script>
<div class="gamedesc">D�fendez-vous contre l'invasion des Norbes.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=orbdefence"></a>
<a name="link62" id="link62" class="buttonPlaySmall" href="../../l=2/orbdefence/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link62").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link63" id="link63" href="../../l=2/pixelate/play.ws">
<img src="../../l=2/img/images/game/pixelate/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link63").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link64" id="link64" href="../../l=2/pixelate/play.ws">Pixel'Art</a></div>
<script language="javascript"> document.getElementById("link64").href+=suffix; </script>
<div class="gamedesc">Les blocs ne se contentent pas de tomber&nbsp;!</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=puzzle">Logique</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=pixelate"></a>
<a name="link65" id="link65" class="buttonPlaySmall" href="../../l=2/pixelate/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link65").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link66" id="link66" href="../../l=2/fleacircus/play.ws">
<img src="../../l=2/img/images/game/fleacircus/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link66").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link67" id="link67" href="../../l=2/fleacircus/play.ws">Puces savantes</a></div>
<script language="javascript"> document.getElementById("link67").href+=suffix; </script>
<div class="gamedesc">Domptez les puces dans leur mini-cirque.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=puzzle">Logique</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=fleacircus"></a>
<a name="link68" id="link68" class="buttonPlaySmall" href="../../l=2/fleacircus/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link68").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link69" id="link69" href="../../l=2/torchallenge/play.ws">
<img src="../../l=2/img/images/game/torchallenge/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link69").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link70" id="link70" href="../../l=2/torchallenge/play.ws">Shaolin Kombat</a></div>
<script language="javascript"> document.getElementById("link70").href+=suffix; </script>
<div class="gamedesc">Devenez le ma�tre des tours pour atteindre l'illumination.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=platform">Plateforme</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=torchallenge"></a>
<a name="link71" id="link71" class="buttonPlaySmall" href="../../l=2/torchallenge/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link71").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link72" id="link72" href="../../l=2/starcannon/play.ws">
<img src="../../l=2/img/images/game/starcannon/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link72").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link73" id="link73" href="../../l=2/starcannon/play.ws">Star Cannon</a></div>
<script language="javascript"> document.getElementById("link73").href+=suffix; </script>
<div class="gamedesc">Pilotez le vaisseau spatial le plus puissant de tous les temps.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=shooter">Jeu de tir</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=starcannon"></a>
<a name="link74" id="link74" class="buttonPlaySmall" href="../../l=2/starcannon/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link74").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link75" id="link75" href="../../l=2/stellarshard/play.ws">
<img src="../../l=2/img/images/game/stellarshard/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link75").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link76" id="link76" href="../../l=2/stellarshard/play.ws">Stellar Shard</a></div>
<script language="javascript"> document.getElementById("link76").href+=suffix; </script>
<div class="gamedesc">Nettoyez le champ d'ast�ro�des gr�ce � une puissance de feu croissante.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=stellarshard"></a>
<a name="link77" id="link77" class="buttonPlaySmall" href="../../l=2/stellarshard/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link77").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link78" id="link78" href="../../l=2/wizardrun/play.ws">
<img src="../../l=2/img/images/game/wizardrun/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link78").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link79" id="link79" href="../../l=2/wizardrun/play.ws">Super Stella</a></div>
<script language="javascript"> document.getElementById("link79").href+=suffix; </script>
<div class="gamedesc">Lancez des �toiles sur vos ennemis dans cet amusant jeu de plate-forme.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=platform">Plateforme</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=wizardrun"></a>
<a name="link80" id="link80" class="buttonPlaySmall" href="../../l=2/wizardrun/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link80").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link81" id="link81" href="../../l=2/terraphoenix/play.ws">
<img src="../../l=2/img/images/game/terraphoenix/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link81").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link82" id="link82" href="../../l=2/terraphoenix/play.ws">Terra Ph�nix</a></div>
<script language="javascript"> document.getElementById("link82").href+=suffix; </script>
<div class="gamedesc">Commandez vos troupes d'�lite dans ce jeu de strat�gie.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=terraphoenix"></a>
<a name="link83" id="link83" class="buttonPlaySmall" href="../../l=2/terraphoenix/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link83").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link84" id="link84" href="../../l=2/tetralink/play.ws">
<img src="../../l=2/img/images/game/tetralink/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link84").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link85" id="link85" href="../../l=2/tetralink/play.ws">TetraLink</a></div>
<script language="javascript"> document.getElementById("link85").href+=suffix; </script>
<div class="gamedesc">Alignez quatre jetons avant votre adversaire.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=strategy">Strat�gie</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=tetralink"></a>
<a name="link86" id="link86" class="buttonPlaySmall" href="../../l=2/tetralink/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link86").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link87" id="link87" href="../../l=2/torquing/play.ws">
<img src="../../l=2/img/images/game/torquing/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link87").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link88" id="link88" href="../../l=2/torquing/play.ws">Torquing!</a></div>
<script language="javascript"> document.getElementById("link88").href+=suffix; </script>
<div class="gamedesc">Vitesse et hamsters ne font pas bon m�nage - sauf ici.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=platform">Plateforme</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=torquing"></a>
<a name="link89" id="link89" class="buttonPlaySmall" href="../../l=2/torquing/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link89").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link90" id="link90" href="../../l=2/escapevector/play.ws">
<img src="../../l=2/img/images/game/escapevector/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link90").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link91" id="link91" href="../../l=2/escapevector/play.ws">Tracto Vector</a></div>
<script language="javascript"> document.getElementById("link91").href+=suffix; </script>
<div class="gamedesc">� vous de r�cup�rer la technologie terrestre.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=arcade">Arcade</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=escapevector"></a>
<a name="link92" id="link92" class="buttonPlaySmall" href="../../l=2/escapevector/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link92").href+=suffix; </script>
</div>
</div>
</div>
<div class="gamelistentry" name="gameBox">
<div class="gameimage">
<a name="link93" id="link93" href="../../l=2/transmogrify/play.ws">
<img src="../../l=2/img/images/game/transmogrify/small.jpg" alt="" />
</a><script language="javascript"> document.getElementById("link93").href+=suffix; </script>
</div>
<div class="gametext">
<div class="gametitle"><a name="link94" id="link94" href="../../l=2/transmogrify/play.ws">Transmogrify</a></div>
<script language="javascript"> document.getElementById("link94").href+=suffix; </script>
<div class="gamedesc">Passez � la t�l� et formez un maximum d'anagrammes.</div>
<div class="genre"><div><a href="../../l=2/gamelist.ws?genreBox=word">Mots</a></div></div>
<div class="links">
<a class="buttonInfo" href="../../l=2/info.ws?game=transmogrify"></a>
<a name="link95" id="link95" class="buttonPlaySmall" href="../../l=2/transmogrify/play.ws">Jouer</a>
<script language="javascript"> document.getElementById("link95").href+=suffix; </script>
</div>
</div>
</div>
<br class="clear" />
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
<div class="cr">
<p> Copyright � 2008 Jagex Ltd. Jagex et FunOrb sont des marques d�pos�es de Jagex Limited au Royaume-Uni et des marques de commerce dans d'autres pays. </p>
<p> Pour utiliser ce service, vous devez accepter nos <a href="../../l=2/terms/terms.ws" name="terms">Conditions d'utilisation</a> et notre <a href="../../l=2/privacy/privacy.ws" name="privacy">Charte de confidentialit�</a>. </p>
</div>
<div id="jagex">
<a href="http://www.jagex.com/" target="_blank"><img src="../../l=2/img/images/layout/jagex_footer.gif" alt="Logo Jagex" /></a>
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