
//==================================================================================================
 function stopVideo(){ 
//==================================================================================================
   var swf = document.getElementById(strMovie);
   try{ swf.stopVideo(); } catch(err){}
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function SelectScreenshots(){
//==================================================================================================
  stopVideo();
  document.getElementById('screenshotframe').style.display='block';
  document.getElementById('arcanistsTrailer').style.top='-9999px';
  document.getElementById('trailer').className='';
  document.getElementById('screenshots').className='selected';
  return false;
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function SelectTrailer(){
//==================================================================================================
  document.getElementById('screenshotframe').style.display='none';
  document.getElementById('arcanistsTrailer').style.top='0';
  document.getElementById('screenshots').className='';
  document.getElementById('trailer').className='selected';
  return false;
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function Next(){
//==================================================================================================
  ScreenShotIndex++;
  if ( ScreenShotIndex > Screenshots.length-1 )ScreenShotIndex = 0;
  SelectScreenShot(ScreenShotIndex);

  return false;
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function Previous(){
//==================================================================================================
  ScreenShotIndex--;
  if ( ScreenShotIndex < 0 )ScreenShotIndex = Screenshots.length-1;
  SelectScreenShot(ScreenShotIndex);

  return false;
 }
//--------------------------------------------------------------------------------------------------

 var T1,T2,op; /* Timer and opacity */

//==================================================================================================
 function fadeOut(strWhat){
//==================================================================================================
  /* Function to fade our image from opaque to transparent */
  clearTimeout(T1);

  if (!document.getElementById)return false; /* Browser doesn't support fade */
  op = 100;
  T1 = setTimeout( 'reduceOpacity("'+strWhat+'")',10);
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function fadeIn(strWhat){
//==================================================================================================
  /* Function to fade our image from opaque to transparent */
  clearTimeout(T2);

  if (!document.getElementById)return false; /* Browser doesn't support fade */
  op = 0;
  T2 = setTimeout( 'increaseOpacity("'+strWhat+'")',10);
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function reduceOpacity(strWhat){ /* Used in conjunction with fadetoNothing */
//==================================================================================================
  op-=2;
  if ( op >=0 ){
   o = document.getElementById(strWhat);
   setOpacity(o,op);
   setTimeout( 'reduceOpacity("'+strWhat+'")',10);
  }else{
   clearTimeout(T1);
  }
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function increaseOpacity(strWhat){ /* Used in conjunction with fadetoNothing */
//==================================================================================================
  op+=2;
  if ( op <=100 ){
   o = document.getElementById(strWhat);
   setOpacity(o,op);
   setTimeout( 'increaseOpacity("'+strWhat+'")',10);
  }else{
   o = document.getElementById(strWhat);
   setOpacity(o,100);
   clearTimeout(T2);
  }
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function SelectScreenShot(i){
//==================================================================================================
  // Change the preview (medium) image. (Fade it by copying the old one to the front
  // image (uppermost), change the back image to the new one, then fade the front image to nothing).
  // Get the front and back image objects
  oBackImage = document.getElementById('backimage')
  oFrontImage = document.getElementById('frontimage')


  // Copy the old image from the back to the front
  oFrontImage.src=oBackImage.src;
  // Make it opaque (User should see nothing as images are the same)
  //$("#previewmediumfront").show();
  setOpacity(oFrontImage,100);

  // Change the back image to be the new one.
  oBackImage.src=Screenshots[i];

  // Fade the front image to nothing
  //$("#previewmediumfront").fadeOut("slow");
  fadeOut("frontimage");
}
//--------------------------------------------------------------------------------------------------

//==================================================================================================
 function setOpacity( obj, opacity){
//==================================================================================================
  // Try set set opacity in a browser independent way. Opacity can be from 0 to 100 (Not 0 to 1)
  opacity = (opacity == 100)?99.99:opacity;
  // IE/Win
  obj.style.filter = "alpha(opacity:"+opacity+")";
  // Safari < 1.2
  obj.style.KHTMLOpacity = opacity/100;
  // Older Mozilla and Firefox
  obj.style.opacity = opacity/100
 }
//--------------------------------------------------------------------------------------------------

//==================================================================================================
  function cm(){
//==================================================================================================
   return true;
  }
//--------------------------------------------------------------------------------------------------
