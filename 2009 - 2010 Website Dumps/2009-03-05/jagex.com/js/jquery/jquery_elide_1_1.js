(function($){ $.fn.elide = function(options){

// configuration properties
options = $.extend({
 // defaults
 titleText: true
},
options);

this.each(function(){var $this = $(this);

 /*

 1. Find the size of the parent element (must be fixed)
 2. Find the size of the child
 3. If the size of the child is bigger than the parent, insert a span into the child
 with the text, and chop 4 character off it and add "..." at the end.
 4. Repeat until child is not bigger than parent

 Also sets the title attribute of the child if it's not already set so you can
 hover over and get the unchopped text as a tooltip.

 */

 var availableWidth = $this.innerWidth();

 // If we couldn't get a width, or has children (which aren't handled yet) then quit
 if(availableWidth <= 0 || $this.children().length > 0) return;

 // Make 2 spans to go inside
 $this.wrapInner("<span></span>");
 $rail = $this.children();
 $rail.css({
  display: "block",
  width: "200%"
 });

 $rail.wrapInner("<span></span>");
 $span = $rail.children();

 // Recursively shorten the text until it fits
 function truncate(inText, $span, chunk, availableWidth){

  var oText = inText || $span.text();
  var nText = oText;
  var chunk = chunk || Math.round($span.text().length / 2);

  if($span.width() <= availableWidth){ return; }

  nText = oText.substring(0, oText.length - chunk - 3) + '...';
  $span.text(nText);

  if($span.width() > availableWidth){
   truncate(nText, $span, chunk, availableWidth);
  }
  else if(chunk != 1){
   $span.text(oText);
   truncate(oText, $span, Math.round(chunk/2), availableWidth);
  }

 }

 truncate(null, $span, null, availableWidth);


 // Set the title text if we've removed characters and aren't overwriting previously set title text
 if(options.titleText && originalText != newText && !$this.attr("title")){
  $this.attr("title", originalText);
 }

});

}})(jQuery)