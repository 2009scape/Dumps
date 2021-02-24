


(function($){ $.fn.arturoSlider = function(options){

// configuration properties
options = $.extend({
 // defaults
 auto: true,
 speed: 500,
 wrap: true,
 autoPreserveDirection: false,
 period: 5000,
 hoverPause: true
},
options);

this.each(function(){



 /* === SETUP ELEMENTS AND VARIABLES ================================= */


 var $slider = $(this);

 // set up max width slide 'rail'
 var $slidees = options.slidees || $slider.children();

 $slidees.wrapAll("<div></div>");
 var $rail = $slidees.parent();

 // find slide parent dimensions
 var width = $slider.innerWidth();
 var offset = 0;

 // find slidable elements and append/prepend the first and last for wraparound!
 if(options.wrap){
  offset = -(width);
  $rail.css({
   marginLeft: offset,
   width: ($slidees.length+2) * width
  });
  $rail.prepend($slidees.filter(":last").clone());
  $rail.append($slidees.filter(":first").clone());
 }
 // or not, if wraparound isn't on
 else{
  $rail.css({
   width: $slidees.length * width
  });
 }

 // captions
 var $captions = options.captions;



 /* === SLIDE ANIMATION AND TRACKING ================================= */


 // Tracking of how many there are and what we're on right now
 var numSlidees = $slidees.length;
 var currentSlidee = 0;

 // logic and animation for moving between elements
 function slide(arg){

  // If already sliding, ignore the request and dump out
  if($rail.filter(":animated").length > 0) return false;

  // if it's a boolean it represents forwards (true) or backwards (false)
  var slideTo = arg;
  var swapTo = false;
  var direction; // true=forward, false=backward

  if(typeof(slideTo) == "boolean"){
   slideTo = currentSlidee + (arg ? 1 : -1);
   if(options.wrap){
    slideTo = (slideTo >= numSlidees+1 || slideTo < -1) ? 0 : slideTo;
    if(slideTo >= numSlidees){
     swapTo = 0;
    }
    else if(slideTo < 0){
     swapTo = numSlidees-1;
    }
   }else{
    slideTo = (slideTo >= numSlidees) ? 0 : slideTo;
    slideTo = (slideTo < 0) ? numSlidees-1 : slideTo;
   }
   auto.direction(arg);
  }
  else{
   auto.direction((slideTo > currentSlidee) ? true : false);
  }


  // set new current slidee and if we're trying to slide to the slide we're already on, give up and return false
  newCurrentSlidee = (swapTo !== false) ? swapTo : slideTo;
  if(newCurrentSlidee == currentSlidee){
   return false;
  }
  currentSlidee = newCurrentSlidee;

  // do the actual main animation by sliding the rail they live in left or right
  $rail
  .stop()
  .animate(
   {marginLeft: offset -(width*slideTo)},
   {
    easing: "swing",
    duration: options.speed,
    complete: function(){
     if(swapTo !== false){
      $rail.css({
       marginLeft: offset -(width*swapTo)
      })
     }
     if(options.auto) auto.q();
    }
   }
  );

  if($captions.length > 0){
   $captions
   .stop()
   .filter(":visible")
    .fadeOut(
     options.speed/2,
     (function(slideTo){
      return function(){
       $captions
       .slice(currentSlidee, currentSlidee + 1)
        .fadeIn(options.speed/2);
      }
     })(slideTo)
    );
  }


  // if numbers list exists, highlight the new current one halfway through the transition
  setTimeout(
   function(){
    if($numbers.length > 0){
     $numbers
     .removeClass("current")
      .slice(currentSlidee,currentSlidee+1)
      .addClass("current");
    }
   },
   options.speed/2
  );

 }/*slide(arg)*/



 /* === AUTO PROCEED ================================================= */


 var auto = new function(){
  var _that = this;
  var _direction = true; // true = forward, false = backward
  var _timer;
  var _pause = false;

  if(options.hoverPause){
   $slider.hover(
    function(){
     _that.pause(true);
    },
    function(){
     _that.pause(false);
    }
   )
  }

  this.q = function(){
   clearTimeout(_timer);
   if(!_pause){
    _timer = setTimeout(
     function(){
      slide(options.autoPreserveDirection?_direction:true);
     },
     options.period
    );
   }
  }

  this.direction = function(newDirection){
   if(typeof(newDirection) != "boolean"){
    return _direction;
   }
   else{
    _direction = newDirection;
   }
  }

  this.pause = function(pause){
   if(typeof(pause) != "boolean"){
    return _pause;
   }
   else{
    _pause = pause;
    if(pause){
     clearTimeout(_timer);
    }
    else{
     this.q();
    }
   }
  }

 }/*auto()*/

 if(options.auto) auto.q();



 /* === EVENT HANDLING =============================================== */


 // first/prev/next/last controls click handlers config
 var controls = [
  ["first", 0],
  ["prev", false],
  ["next", true],
  ["last", numSlidees-1]
 ];

 for(var i in controls){
  var cID = options[controls[i][0]+"ID"];
  if(cID){
   $("#"+cID).click(
    (function(arg){
     // generic click handler for first/prev/next/last
     return function(ev){
      slide(arg);
      $(this).blur();
      ev.preventDefault();
     }
    })(controls[i][1])
   )
  }
 }

 // click handler for the numbers is a bit different!
 var $numbers;
 if(options.listID){
  $numbers = $("#"+options.listID).find("a");
  $numbers.click(function(ev){
   slide($numbers.index(this))
   $(this).blur();
   ev.preventDefault();
  });
 }

});

}})(jQuery)