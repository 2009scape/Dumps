
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="
pt" xmlns:IE>
<head>
<title>FunOrb - Jogos gratuitos on-line da Jagex Games Studio</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="Content-Language" content="
pt">
<meta http-equiv="imagetoolbar" content="no">
<meta http-equiv="PRAGMA" content="NO-CACHE">
<meta http-equiv="CACHE-CONTROL" content="NO-CACHE">
<meta name="keywords" content="Play Free Online Games, puzzle games, platform games, arcade games, shooter games, action games, java games, casual games, racing games, word games, retro games, classic games, browser games, strategy games, multiplayer games, arcanists, Jagex">
<meta name="description" content="FunOrb, jogos on-line gratuitos via navegador da Jagex Games Studio, os mesmos criadores do RuneScape. Vibre com jogos de racioc�nio, a��o, estrat�gia, tiro, palavras, corridas e muito mais!">
<meta name="title" content="FunOrb - Free Online Games by Jagex Games Studio">
<meta name="Author" content="www.jagex.com">
<meta name="Copyright" content="Copyright 1999 - 2009 Jagex Ltd, www.jagex.com">
<meta name="ROBOTS" content="INDEX, FOLLOW">
<meta name="classification" content="GENERAL">
<meta name="rating" content="General">
<meta name="Distribution" content="global">
<meta name="Identifier-URL" content="http://www.funorb.com">
<style type="text/css" media="screen">
  /*\*/@import url(../../l=3/css/global-28.css);/**/
 </style>
<!--[if lt IE 7]>
<style type="text/css" media="screen">@import url(../../l=3/css/ieFix-2.css);</style>
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
 /*\*/@import url("../../l=3/css/info-7.css");/**/
 .intro {
  background-image: url(../../l=3/img/images/game/armiesofgielinor/intro.jpg);
 }
 .buttonSubscribe {
  background-image: url(../../l=3/img/images/info/button_subscribe.gif);
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
images[0] = '../../l=3/img/images/game/armiesofgielinor/screen1.jpg?1';
images[1] = '../../l=3/img/images/game/armiesofgielinor/screen2.jpg?1';
images[2] = '../../l=3/img/images/game/armiesofgielinor/screen3.jpg?1';
images[3] = '../../l=3/img/images/game/armiesofgielinor/screen4.jpg?1';
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
<td class="center bodyTheme">
<div id="container">

<div id="header">
<div id="navigation">
<div class="lft"></div>
<div class="rght"></div>
<div class="container">

<a id="logo" href="../../l=3/index.ws" ><b>
<img src="../../l=3/img/images/layout/logo_funorb.jpg" alt="Funorb" />
</b></a>
<div id="shell">
<div class="lft"></div>
<div class="rght"></div>
<div id="teleText">

<h1 id="welcomeText">Bem-vindo ao FunOrb - O melhor em jogos on-line gratuitos</h1>
<span id="teletext_inner">
Para obter acesso a qualquer um de nossos jogos multijogadores, tabelas das melhores pontua��es e a��es, crie uma conta. � r�pido, f�cil e completamente GRATUITO!</span>
<script type="text/javascript" src="http://fomessenger.funorb.com/l=3/messengercommon0.js"></script>
<script type="text/javascript" src="http://fomessenger.funorb.com/l=3/messenger.js"></script>

</div>
</div>
</div>
<div class="clear"></div>
<ul class="menu">
<li class="top p1"><a href="../../l=3/index.ws" id="home" class="top_link"><span>Principal</span></a></li>
<li class="top p2"><a id="games" class="top_link" href="../../l=3/gamelist.ws"><span>Jogos</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../l=3/gamelist.ws" class="fly">Todos os jogos</a></li>
<li><a href="../../l=3/gamelist.ws?playerBox=1" class="fly">Jogos para um jogador</a></li>
<li><a href="../../l=3/gamelist.ws?playerBox=2" class="fly">Jogos multijogadores</a></li>
<li><a href="../../l=3/options.ws" class="fly last">Op��es Java</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p3"><a id="account" class="top_link" href="https://create.funorb.com/l=3/"><span>Participar</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="https://create.funorb.com/l=3/" class="fly">Criar conta gratuita</a></li>
<li><a href="../../l=3/redirect.ws?mod=billing_core&amp;dest=paymentoptions.ws" class="fly">Assinar o FunOrb</a></li>
<li><a href="../../l=3/members.ws" class="fly">Benef�cios dos membros</a></li>
<li><a href="../../l=3/account_management.ws" class="fly last">Gerenciamento de conta</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p4"><a id="forums" class="top_link" href="http://focommunity.funorb.com/l=3/"><span>Comunidade</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="http://focommunity.funorb.com/l=3/" class="fly">Comunidade - Principal</a></li>
<li><a href="
http://forum-fo-pt.funorb.com/l=3/forums.ws" class="fly">F�runs</a></li>
<li><a href="../../l=3/kbase/guid/dev_diary" class="fly">Di�rios de desenvolvimento</a></li>
<li><a href="http://achievements.funorb.com/l=3/" class="fly">Conquistas</a></li>
<li><a href="http://hiscore-fo.funorb.com/l=3/" class="fly">Recordes e Pontua��es</a></li>
<li><a href="http://orbcoins.funorb.com/l=3/" class="fly last">Orb Downloads</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p5"><a id="help" class="top_link" href="../../l=3/kbase/guid/help"><span>Ajuda</span><!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul class="sub">
<li><a href="../../l=3/kbase/guid/customer_support" class="fly">Suporte ao Cliente</a></li>
<li><a href="../../l=3/parents.ws" class="fly">Guia para Pais</a></li>
<li><a href="../../l=3/kbase/guid/rules_of_conduct" class="fly">Regras</a></li>
<li><a href="../../l=3/redirect.ws?mod=billing_core&amp;dest=unsubscribe.ws" class="fly">Cancelar recebimento</a></li>
<li><a href="../../l=3/bugtracker.ws" class="fly last">Enviar um relat�rio de erro</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
<li class="top p11"><a id="empty" class="top_link"><span>&nbsp;</span></a></li>
<li class="top p7"><a href="https://create.funorb.com/l=3/" id="register" class="top_link"><span>Criar conta</span></a></li>
<li class="top p8"><a href="../../l=3/loginapplet/login.ws?mod=www&amp;ssl=0&amp;dest=info.ws?game=armiesofgielinor" id="signIn" class="top_link"><span>Login</span></a></li>
<li class="top p10">
<div class="top_link" id="lang_div">
<a id="countrydrop" href="../../l=3/index.ws">
<span>
<img alt="Portugu&ecirc;s (BR)" src="../../l=3/img/images/layout/br.gif">
<span id="dropArrow"></span>
</span>
<!--[if gt IE 6]><!--></a></div><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->

<ul id="lang" class="sub">
<li><a class="fly" href="../../index.ws"><img title="English" alt="English" src="../../l=3/img/images/layout/en.gif"></a></li>
<li><a class="fly" href="../../l=1/index.ws"><img title="Deutsch" alt="Deutsch" src="../../l=3/img/images/layout/de.gif"></a></li>
<li><a class="fly" href="../../l=2/index.ws"><img title="Fran&ccedil;ais" alt="Fran&ccedil;ais" src="../../l=3/img/images/layout/fr.gif"></a></li>
<li><a class="fly last" href="../../l=3/index.ws"><img title="Portugu&ecirc;s (BR)" alt="Portugu&ecirc;s (BR)" src="../../l=3/img/images/layout/br.gif"></a></li>
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
<a href="../../l=3/gamelist.ws">Jogos</a> &gt;
<a href="../../l=3/gamelist.ws?genreBox=strategy">Estrat�gia</a> &gt;
<a onclick="suffixize(this)" href="../../l=3/armiesofgielinor/play.ws">Hordas de Guilenor</a> &gt;
Mais informa��es </span>
<span class="sectionServerlist">
<a style="text-decoration: underline; font-weight: normal;" href="../../l=3/armiesofgielinor/serverlist.ws">Lista de servidores</a>
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
<a href="../../l=3/gamelist.ws?genreBox=strategy"><span class="genre">Estrat�gia</span></a><br> Empunhe a bandeira do grupo escolhido bem alto e trave batalhas em Hordas de Guilenor. </div>
</div>
<a class="buttonWide" href="#description"><div>Descri��o</div></a><br />
<a class="buttonWide" href="#faqs"><div>Perguntas freq�entes</div></a><br />
<a class="buttonWide" href="https://create.funorb.com/l=3/"><div>Criar conta gratuita</div></a><br />
<a onclick="suffixize(this)" class="buttonPlayBig" href="../../l=3/armiesofgielinor/play.ws"></a>
</div>

<a name="screenshots"></a>
<div class="subsection" id="screenshots" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Capturas de tela
</div>
</div>
<div class="subsectionContent">
<script type="text/javascript">
  document.write('<img id="screenshotsImage" class="screenshotsImage" src="../../l=3/img/images/game/armiesofgielinor/screen1.jpg" alt="In-game screenshot" onLoad="imageTimer(this.id)" />');
 </script>
<noscript>
<iframe name="screenshotsFrame" class="screenshotsFrame" id="screenshotsFrame" scrolling="no" frameBorder="0" src="../../l=3/display_screenshot.ws?game=armiesofgielinor&screenshot=screen1">
</iframe>
</noscript>
<div id="screenshotsThumbs">
<a href="../../l=3/display_screenshot.ws?game=armiesofgielinor&screenshot=screen1" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 0);" class="screenshotsThumb" style="background-image: url(../../l=3/img/images/game/armiesofgielinor/screen1_thumb.jpg?1);">
<div id="screenshotsLoading0"></div>
</a>
<a href="../../l=3/display_screenshot.ws?game=armiesofgielinor&screenshot=screen2" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 1);" class="screenshotsThumb" style="background-image: url(../../l=3/img/images/game/armiesofgielinor/screen2_thumb.jpg?1);">
<div id="screenshotsLoading1"></div>
</a>
<a href="../../l=3/display_screenshot.ws?game=armiesofgielinor&screenshot=screen3" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 2);" class="screenshotsThumb" style="background-image: url(../../l=3/img/images/game/armiesofgielinor/screen3_thumb.jpg?1);">
<div id="screenshotsLoading2"></div>
</a>
<a href="../../l=3/display_screenshot.ws?game=armiesofgielinor&screenshot=screen4" target="screenshotsFrame" onClick="return imageGoto('screenshotsImage', 3);" class="screenshotsThumb" style="background-image: url(../../l=3/img/images/game/armiesofgielinor/screen4_thumb.jpg?1);">
<div id="screenshotsLoading3"></div>
</a>
</div>
</div>
</div>

<a name="benefits"></a>
<div class="subsection" id="benefits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Hordas de Guilenor - Recursos
</div>
</div>
<div class="subsectionContent">
<div class="benefitsPadding"></div>
<div class="benefitsContent">
<div class="benefitsList">
<ul>

<li>Baseado no universo de RuneScape.</li>
<li>Mais de 30 unidades para comandar.</li>
<li>Jogos coletivos (2x2, 3x3, 4x4) e Cada um por si.</li>
<li>Multijogador on-line para at� 8 jogadores.</li>
<li>Dispute jogos n�o qualificat�rios.</li>
<li>Jogue GR�TIS!</li>
</ul>
</div>
</div>
</div>
</div>
<br class="clear" />

<a name="description"></a>
<div class="subsection" id="description" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Descri��o
</div>
</div>
<div class="subsectionContent">
<div>
<p>Hordas de Guilenor (HdG) � um jogo de estrat�gia disputado em rodadas para at� 8 jogadores, e � o primeiro jogo do FunOrb baseado em nosso jogo de aventura multijogadores, o RuneScape (nesse caso, Guilenor seria um nome alternativo para o mundo de RuneScape). Todos os jogadores come�am com um modesto l�der b�rbaro e precisam capturar estruturas, teleportar novas unidades e lutar contra os inimigos para controlar a mais poderosa horda de Guilenor.</p>
<p>Voc� vai encontrar muitas unidades diferentes, cada qual alinhada a um dos v�rios deuses de Guilenor. Algumas delas s�o muito poderosas, enquanto outras t�m habilidades especiais que podem afetar a paisagem ou introduzir diversas estrat�gias diferentes para voc� usar. Ser� que voc� consegue equilibrar a for�a de sua horda para enfrentar os oponentes e conquistar a vit�ria?</p>
</div>
</div>
</div>
<a name="top_of_page"></a>

<a name="faqs"></a>
<div class="subsection" id="faqs" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Perguntas frequentes
</div>
</div>
<div class="subsectionContent">
<div class="faqsList">
<ol>
<li><a href="#faqs_q1">O que � um jogo de estrat�gia disputado em rodadas?</a></li>
<li><a href="#faqs_q2">Quantas unidades o jogo possui?</a></li>
<li><a href="#faqs_q3">H� alguma t�tica ou dica interessante?</a></li>
<li><a href="#faqs_q4">Onde fica Guilenor? O que � RuneScape?</a></li>
<li><a href="#faqs_q5">Se eu jogar Hordas de Guilenor, isso ir� afetar meu personagem do RuneScape?</a></li>
<li><a href="#faqs_q6">Em que momento da hist�ria de RuneScape � ambientado Hordas de Guilenor?</a></li>
<li><a href="#faqs_q7">Por que unidades espec�ficas foram escolhidas? Por que voc�s n�o usaram...?</a></li>
<li><a href="#faqs_q8">H� algumas unidades em HdG que n�o existem no RuneScape ainda. Seria isto uma indica��o de que elas v�o existir?</a></li>
<li><a href="#faqs_q9">Hordas de Guilenor � a mesma coisa que o minijogo Mobiliza��o de Ex�rcitos (RuneScape)?</a></li>
<li><a href="#faqs_spec">Quais s�o as especifica��es m�nimas para este jogo?</a></li>
</ol>
</div>
<div class="faqsAnswer">
<a name="faqs_q1"></a>
<h3>1. O que � um jogo de estrat�gia disputado em rodadas?</h3>
<p>Voc� e seu oponente se alternam para jogar, a cada rodada, movendo e atacando com suas hordas. O principal objetivo � alcan�ar as condi��es que lhe garantam a vit�ria antes de seu oponente.</p>
<div class="hr"></div>
<a name="faqs_q2"></a>
<h3>2. Quantas unidades o jogo possui?</h3>
<p>O jogo possui 76 unidades. Cada um dos seis deuses oferece 11 unidades; h� 9 unidades neutras e todos os jogadores come�am o jogo com um l�der b�rbaro. Para sua informa��o, a 9� unidade neutra � o Drag�o vermelho, que s� fica dispon�vel se outro jogador j� tiver evocado o Drag�o negro rei (DNR). Jogadores gratuitos t�m acesso a 27 unidades, incluindo o l�der b�rbaro e DNR.</p>
<div class="hr"></div>
<a name="faqs_q3"></a>
<h3>3. H� alguma t�tica ou dica interessante?</h3>
<p>Aqui v�o algumas dicas para jogar HdG:</p>
<ul>
<li>Tente capturar um portal primeiro...</li>
<li>... e n�o o deixe desprotegido!</li>
<li>Ao capturar estruturas, voc� ganha pontos de vit�ria e de mana, e este � o segredo para vencer o jogo. Posicionando as unidades em estruturas ajuda a recuper�-las e fornece b�nus de defesa. Ent�o, capture o m�ximo que puder, o mais r�pido que conseguir.</li>
<li>S� os b�rbaros podem capturar estruturas, ent�o tente ter muitos deles no come�o de cada jogo.</li>
<li>Use seu l�der b�rbaro com sabedoria, j� que ele pode capturar estruturas mais rapidamente que os outros b�rbaros.</li>
<li>Quando as unidades morrem, elas se tornam uma pilha de ossos - � bastante �til ter um necromante...</li>
<li>Use o terreno a seu favor. Procure pontos de bloqueio e tente se lembrar quais unidades podem avan�ar por qual terreno.</li>
<li>As unidades ajudantes e aquelas com habilidades especiais podem afetar drasticamente a batalha.</li>
<li>Fa�a sua jogada r�pido, j� que ao terminar a sua rodada antes voc� ganha pontos de mana.</li>
<li>Ocupar uma estrutura controlada pelo inimigo reduz a quantidade de mana que ele pode ganhar. Claro que isso funciona da mesma forma para voc�.</li>
<li>Algumas unidades s�o melhores contra um tipo espec�fico de inimigo do que outras.</li>
<li>Jogue limpo e, acima de tudo, divirta-se!</li>
</ul>
<div class="hr"></div>
<a name="faqs_q4"></a>
<h3>4. Onde fica Guilenor? O que � RuneScape?</h3>
<p>RuneScape � um outro nome para Guilenor, o mundo onde este jogo se passa. � tamb�m o nome do jogo de fantasia da <a href="http://www.jagex.com" target="_blank">Jagex</a>, um jogo de aventura multijogador. Se voc� nunca ouviu falar ou ainda n�o deu uma olhada, que tal clicar <a href="http://www.runescape.com" target="_blank">aqui</a> para visitar o site do RuneScape?</p>
<p>Seu login e senha do FunOrb podem ser usados para acessar o RuneScape tamb�m e, assim como no FunOrb, voc� pode jogar na �rea gratuita. N�s oferecemos um pacote conjunto de assinatura do RuneScape e FunOrb, caso queira se tornar membro dos dois sites.</p>
<div class="hr"></div>
<a name="faqs_q5"></a>
<h3>5. Se eu jogar Hordas de Guilenor, isso ir� afetar meu personagem do RuneScape?</h3>
<p>Apesar de ter sido inspirado nele, HdG n�o tem nenhuma outra conex�o com o RuneScape. Jogar Hordas de Guilenor n�o causa absolutamente nenhum impacto no seu personagem do RuneScape e vice-versa.</p>
<div class="hr"></div>
<a name="faqs_q6"></a>
<h3>6. Em que momento da hist�ria de RuneScape � ambientado Hordas de Guilenor?</h3>
<p>Tecnicamente, HdG n�o se passa em um per�odo espec�fico da hist�ria de RuneScape, mas podemos considerar que tenha se passado durante a Guerra dos Deuses. Pode parecer estranho ver for�as saradoministas e zamorakianas lutando do mesmo lado, mas este era um per�odo de caos na hist�ria do RuneScape. Por isso, n�o � imposs�vel que grupos inimigos tenham formado alian�as tempor�rias a fim de alcan�ar um prop�sito maior.</p>
<div class="hr"></div>
<a name="faqs_q7"></a>
<h3>7. Por que unidades espec�ficas foram escolhidas? Por que voc�s n�o usaram...?</h3>
<p>As unidades escolhidas para HdG foram pensadas com cuidado, com base em v�rios fatores. Seria imposs�vel incluir todas as criaturas de RuneScape E AINDA ter um jogo equilibrado e divertido. Se h� alguma criatura que voc� gostaria de ver neste jogo, bem... por enquanto elas continuam no RuneScape. Al�m disso, planejamos atualizar Hordas de Guilenor mais adiante, ent�o sinta-se � vontade para nos dizer que outras unidades voc� gostaria que inclu�ssemos. Se elas se encaixarem no jogo, elas podem ser inclu�das um dia.</p>
<div class="hr"></div>
<a name="faqs_q8"></a>
<h3>8. Algumas unidades em HdG n�o existem no RuneScape ainda. Seria isto uma indica��o de que elas v�o existir?</h3>
<p>A resposta � n�o. Nosso principal objetivo era fazer HdG de forma equilibrada e divertida, ent�o em vez de uma "farofa" - um misto entre as habilidades especiais de HdG e de uma criatura existente em RuneScape -, decidimos criar algumas criaturas totalmente novas, que se enquadram no universo de RuneScape. H� uma chance dessas criaturas um dia darem um jeito de entrar no RuneScape, mas isso s� acontecer� se e quando houver uma boa oportunidade.</p>
<div class="hr"></div>
<a name="faqs_q9"></a>
<h3>9. Hordas de Guilenor � a mesma coisa que o minijogo Mobiliza��o de Ex�rcitos (RuneScape)?</h3>
<p>N�o. Hordas de Guilenor e Mobiliza��o de Ex�rcitos s�o e, sempre ser�o, dois jogos completamente separados.</p>
<div class="hr"></div>
<a name="faqs_spec"></a>
<h3>10. Quais s�o as especifica��es m�nimas para este jogo?</h3>
<p>As especifica��es m�nimas recomendadas para este jogo s�o:</p>
<ul>
<li>1.0 GHz <li>128 MB de RAM </ul>
<p>As especifica��es <b>recomendadas</b> para aproveitar ao m�ximo este jogo s�o:</p>
<ul>
<li>1.5 GHz <li>256 MB de RAM </ul>
<p>Abaixo voc� encontrar� uma explica��o dos termos das nossas especifica��es t�cnicas.</p>
<p><b>Megahertz (MHz) / Gigahertz (GHz)</b> � uma medida que define a velocidade do processador do computador. Isso afeta a rapidez com que voc� pode executar jogos e aplicativos, por exemplo.</p>
<p>Os <b>Megabytes (MB)</b> s�o usados para medir a quantidade de mem�ria do computador. Isso afeta a rapidez com que o computador � executado ao usar programas grandes, como jogos, ou quando voc� executa v�rios programas ao mesmo tempo.</p>
<p>Clique <a href="http://www.java.com/getjava" target="_blank">aqui</a> para obter a �ltima vers�o do Sun Java.</p>
</div>
</div>
</div>

<a name="furtherBenefits"></a>
<div class="subsection" id="furtherBenefits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Benef�cios do membro do FunOrb
</div>
</div>
<div class="subsectionContent">
<div>
<p style="padding-bottom: 5px;">Os membros ganham:</p>
<ul style="line-height: 22px;">
<li>Mais de 40 novas unidades, inclusive unidades de sucesso do RuneScape.</li>
<li>Tr�s novos grupos: Seren, Bandos e o pante�o Menaphita.</li>
<li>Equipamentos - use runas para adquirir itens para ajudar sua horda a vencer.</li>
<li>Mais modelos de bras�o.</li>
<li>Bras�o de prest�gio.</li>
<li>Mais dois mapas com ambientes diferentes.</li>
<li>Jogos qualificat�rios.</li>
<li>Acesso a todas as Conquistas.</li>
<li>Modo tela cheia.</li>
<li>Sem an�ncios durante o jogo.</li> <li>Acesso total a todo conte�do exclusivo para membros do FunOrb.</li>
</ul>
<p>
<a href="../../l=3/redirect.ws?mod=billing_core&dest=paymentoptions.ws" class="buttonSubscribe"></a>
</p>
</div>
</div>
</div>

<a name="credits"></a>
<div class="subsection" id="credits" style="">
<div class="subsectionHeader">
<div class="subsectionTitle">
Equipe de Desenvolvimento
</div>
</div>
<div class="subsectionContent">
<div>
<p>
<b>Desenvolvimento:</b> Brian C,&nbsp;Stacy S,&nbsp;Mark T,&nbsp;Thomas D<br>
<b>Design gr�fico:</b> Adam S,&nbsp;Anthony A,&nbsp;David H,&nbsp;Kristian F,&nbsp;Peter S<br>
<b>�udio:</b> Adam B,&nbsp;Ian T<br>
<b>Controle de Qualidade:</b> Joe C,&nbsp;Ken W L,&nbsp;Michael T,&nbsp;Sally R,&nbsp;Alex P<br>
<b>Tradu��o:</b> Giulyanna S,&nbsp;Betina U,&nbsp;Claudio D C,&nbsp;Marsel de S
</p>
<p class="articleBacktotop">
<a href="#top"><img src="../../l=3/img/images/layout/backtotop.gif" alt="Voltar ao topo" title="Voltar ao topo" /></a>
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
<div id="languagefooter"> Selecione o idioma:&nbsp; <a href="../../index.ws"><img alt="English" src="../../l=3/img/images/layout/en.gif">English</a>
<a href="../../l=1/index.ws"><img alt="Deutsch" src="../../l=3/img/images/layout/de.gif">Deutsch</a>
<a href="../../l=2/index.ws"><img alt="Fran&ccedil;ais" src="../../l=3/img/images/layout/fr.gif">Fran&ccedil;ais</a>
<a href="../../l=3/index.ws"><img alt="Portugu&ecirc;s (BR)" src="../../l=3/img/images/layout/br.gif">Portugu&ecirc;s (BR)</a>
</div>
<div class="cr">
<p> Copyright � 2009 Jagex Ltd. Jagex e FunOrb s�o marcas registradas da Jagex Limited no Reino Unido e em outros pa�ses do mundo. </p>
<p> Ao utilizar nossos servi�os, voc� concorda com nossos <a href="../../l=3/terms/terms.ws" name="terms">Termos e Condi��es</a> e <a href="../../l=3/privacy/privacy.ws" name="privacy">Pol�tica de Privacidade</a>. </p>
</div>
<div id="jagex">
<a href="http://www.jagex.com/" target="_blank"><img src="../../l=3/img/images/layout/jagex_footer.gif?1" alt="Logotipo Jagex" /></a>
</div>
</div>
</div>
</td>
</tr>
</tbody>
</table>