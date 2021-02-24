(function($){ $.fn.placeholder = function(options){


// configuration properties
options = $.extend({
 // defaults
 attribute: 'placeholder',
 addclass: 'placeholder',
 force: false
},
options);


// if browser has native support for placeholder, quit out unless user has set 'force' option (may be useful if they want the placeholder classes added/removed even on html5 ready browsers)
if(!options.force && 'placeholder' in document.createElement('input')) return true;


this.each(function(){var $this = $(this);

 // if no placeholder text is defined, give up
 var placeholder = $this.attr(options.attribute);
 if(!placeholder || placeholder.length < 1) return;

 // focus handler/function - if placeholder text is there, remove it, remove placeholder class
 $this.focus(function(){
  var val = $this.val();
  if(val == placeholder){
   $this.val('');
  }
  if(options.addclass) $this.removeClass(options.addclass);
 });

 // focus handler - blur function separate so we can call it on page load
 $this.blur(function(){
  blurFunction();
 });

 // blur function - if placeholder text is there, remove it, remove placeholder class
 function blurFunction(){
  var val = $this.val();
  if(val == '' || val == placeholder && options.addclass){
   $this.addClass(options.addclass);
  }
  if(val == '') $this.val(placeholder);
 }

 // call the blur function when the page is loaded to set up placeholder text
 blurFunction();

});/*this.each()*/


}})(jQuery)