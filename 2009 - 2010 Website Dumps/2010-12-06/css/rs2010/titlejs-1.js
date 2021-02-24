
/* start ready function*/$(function(){


/* === SLIDER =============================================================== */

if($("#slider").hasClass("sliderJS")){
 $("#slider").arturoSlider({
  nextID: "sliderNext",
  prevID: "sliderPrev",
  listID: "sliderList",
  slidees: $("#slider img.slide"),
  captions: $("#slider a.caption"),
  speed: 800,
  period: 8000,
  autoPreserveDirection: true
 });
};


/* === NEWS TYPE SWITCHER =================================================== */



var $newsTabs = $("#news .newsTab");
var $newsContent = $("#news .newsContent");

$newsTabs.click(function(ev){var $this = $(this);

 // don't follow the link
 ev.preventDefault();

 // quit if that tab is already selected
 if($this.hasClass("newsTabSelected")) return false;

 $newsTabs.removeClass("newsTabSelected");
 $newsContent.removeClass("newsContentSelected");

 $this.addClass("newsTabSelected");

 var index = $newsTabs.index($this);
 var $newsContentSelected = $newsContent.slice(index, index+1);

 $newsContentSelected.addClass("newsContentSelected");
 $("a.newsItem", $newsContentSelected).each( function(){addElidesToNewsItems(this)} );

 track("newstabs/"+$this.text());

})

// Do the ellipses for the initially selected tab
$("#news .newsContentSelected a.newsItem").each( function(){addElidesToNewsItems(this)} );

function addElidesToNewsItems(toWhat){var $this=$(toWhat);
 var $p = $("p", $this);
 var $h3 = $("h3", $this);
 if($(".newsIntro", $h3).length <= 0){
  $h3.append("<span class='newsIntro'>"+$p.html()+"</span>");
  $("h3 .newsIntro", $this).elide({titleText: false});
 }
};


/* === NEWS CUSTOM ACCORDION ================================================ */

$("#news a.newsItem").click(function(ev){var $this=$(this);

 // Set up config
 var config = {
  contracted: 27,
  expanded: 128,
  defaultClass: "newsItem",
  selectedClass: "newsItemSelected",
  duration: 404
 }

 // If it's already open just follow the link as usual
 if($this.hasClass(config.selectedClass)) return;

 // Don't follow the link
 ev.preventDefault();

 // If we're midway through an animation, quit, don't want q-ing issues
 if($this.siblings(":animated").length > 0) return;

 // Add the selected class to the one we're currently opening
 $this
  .addClass(config.selectedClass)
  .css({height: config.contracted}); // forcefully override class so height can be animated instead of jumping

 // Animate the heights of the target and previously selected items
 var both = config.expanded + config.contracted;
 var $active = $this
  .siblings("."+config.selectedClass)
   .css({height: config.expanded});

 $({height: config.expanded})
  .animate(
   {height: config.contracted},
   {
    duration: config.duration,
    step: function(newHeight){
        $this.css({height: Math.round(both - newHeight)});
        $active.css({height: Math.round(newHeight)});
    }
   }
  );

 // Fade out the flags as it's a bit jarring when they appear/disappear
 $(".newsFlag", $this).fadeIn(config.duration*1.5);
 $(".newsFlag", $active).fadeOut(config.duration*1.5);

 // Instead of removing the class on animation complete, removing it slightly before feels a bit more natural
 setTimeout(
  function(){
   $active.removeClass(config.selectedClass);
  },
  config.duration / 1.2
 );

});


/* === PLACEHOLDER TEXT FOR INPUTS ========================================== */

$("input").placeholder();


/* === GOOGLE ANALYTICS TRACKING ============================================ */

function track(what){
 try{pageTracker._trackPageview(''+GASTUB+'/'+what+'/')}catch(x){}; try{_pageTracker._trackPageview(''+GASTUB+'/'+what+'/')}catch(x){}

}

$('#playnow').click(function(){
 track('play_game');
});

$('#slider a.caption').click(function(){var $this=$(this);
 track('banner/'+$this.children('h3').text());
});

$('#sliderControls a').click(function(){var $this=$(this);
 track('bannerControls');
});

$('#right a.feature').click(function(){var $this=$(this);
 track('feature/'+$this.find('h3').text());
});

$('#hotTopics a.hot').click(function(){var $this=$(this);
 track('hottopics/'+$this.children('h3').text())
});

$('#Lang a').click(function(){var $this=$(this);
 track('language/'+$this.children('img').attr('alt'));
});

$('#FooterLogo').click(function(){var $this=$(this);
 track('jagex');
});

$('#FooterNav h2').click(function(){var $this=$(this);
 track('footerNav/h2/'+$this.text());
});

$('#FooterNav a').click(function(){var $this=$(this);
 track('footerNav/a/'+$this.text());
});


/* end ready function*/})