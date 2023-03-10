/*jshint browser:true */
/*!
* FitVids 1.1
*
* Copyright 2013, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
*
*/

;(function( $ ){

  'use strict';

  $.fn.fitVids = function( options ) {
    var settings = {
      customSelector: null,
      ignore: null
    };

    if(!document.getElementById('fit-vids-style')) {
      // appendStyles: https://github.com/toddmotto/fluidvids/blob/master/dist/fluidvids.js
      var head = document.head || document.getElementsByTagName('head')[0];
      var css = '.fluid-width-video-wrapper{width:100%;position:relative;padding:0;}.fluid-width-video-wrapper iframe,.fluid-width-video-wrapper object,.fluid-width-video-wrapper embed {position:absolute;top:0;left:0;width:100%;height:100%;}';
      var div = document.createElement("div");
      div.innerHTML = '<p>x</p><style id="fit-vids-style">' + css + '</style>';
      head.appendChild(div.childNodes[1]);
    }

    if ( options ) {
      $.extend( settings, options );
    }

    return this.each(function(){
      var selectors = [
        'iframe[src*="player.vimeo.com"]',
        'iframe[src*="youtube.com"]',
        'iframe[src*="youtube-nocookie.com"]',
        'iframe[src*="kickstarter.com"][src*="video.html"]',
        'object',
        'embed'
      ];

      if (settings.customSelector) {
        selectors.push(settings.customSelector);
      }

      var ignoreList = '.fitvidsignore';

      if(settings.ignore) {
        ignoreList = ignoreList + ', ' + settings.ignore;
      }

      var $allVideos = $(this).find(selectors.join(','));
      $allVideos = $allVideos.not('object object'); // SwfObj conflict patch
      $allVideos = $allVideos.not(ignoreList); // Disable FitVids on this video.

      $allVideos.each(function(){
        var $this = $(this);
        if($this.parents(ignoreList).length > 0) {
          return; // Disable FitVids on this video.
        }
        if (this.tagName.toLowerCase() === 'embed' && $this.parent('object').length || $this.parent('.fluid-width-video-wrapper').length) { return; }
        if ((!$this.css('height') && !$this.css('width')) && (isNaN($this.attr('height')) || isNaN($this.attr('width'))))
        {
          $this.attr('height', 9);
          $this.attr('width', 16);
        }
        var height = ( this.tagName.toLowerCase() === 'object' || ($this.attr('height') && !isNaN(parseInt($this.attr('height'), 10))) ) ? parseInt($this.attr('height'), 10) : $this.height(),
            width = !isNaN(parseInt($this.attr('width'), 10)) ? parseInt($this.attr('width'), 10) : $this.width(),
            aspectRatio = height / width;
        if(!$this.attr('name')){
          var videoName = 'fitvid' + $.fn.fitVids._count;
          $this.attr('name', videoName);
          $.fn.fitVids._count++;
        }
        $this.wrap('<div class="fluid-width-video-wrapper"></div>').parent('.fluid-width-video-wrapper').css('padding-top', (aspectRatio * 100)+'%');
        $this.removeAttr('height').removeAttr('width');
      });
    });
  };
  
  // Internal counter for unique video names.
  $.fn.fitVids._count = 0;
  
// Works with either jQuery or Zepto
})( window.jQuery || window.Zepto );


    $(document).ready(function(){

      // Target your .container, .wrapper, .post, etc.
      $(".home-video").fitVids();

      var show_concert_table=true;

      $("#concert-button").click(function(){
        $("#past-concerts-table").slideToggle();
        if (show_concert_table==false){
          $("#concert-button").html("HIDE PAST CONCERTS");
          show_concert_table=true;
        } else {
          $("#concert-button").html("SHOW PAST CONCERTS");
          show_concert_table=false;
        }
      });

      document.getElementById('concert-button').click();

    });

// Get the modal
var modal0 = document.getElementById("album-modal-0");
var btn0 = document.getElementById("album-modal-button-0");
var span0 = document.getElementById("close-modal-0");
btn0.onclick = function() {modal0.style.display = "block";}
span0.onclick = function() {modal0.style.display = "none";}
$(window).click(function(event) {if (event.target == modal0) {modal0.style.display = "none";}});
var modal1 = document.getElementById("album-modal-1");
var btn1 = document.getElementById("album-modal-button-1");
var span1 = document.getElementById("close-modal-1");
btn1.onclick = function() {modal1.style.display = "block";}
span1.onclick = function() {modal1.style.display = "none";}
$(window).click(function(event) {if (event.target == modal1) {modal1.style.display = "none";}});
var modal2 = document.getElementById("album-modal-2");
var btn2 = document.getElementById("album-modal-button-2");
var span2 = document.getElementById("close-modal-2");
btn2.onclick = function() {modal2.style.display = "block";}
span2.onclick = function() {modal2.style.display = "none";}
$(window).click(function(event) {if (event.target == modal2) {modal2.style.display = "none";}});
var modal3 = document.getElementById("album-modal-3");
var btn3 = document.getElementById("album-modal-button-3");
var span3 = document.getElementById("close-modal-3");
btn3.onclick = function() {modal3.style.display = "block";}
span3.onclick = function() {modal3.style.display = "none";}
$(window).click(function(event) {if (event.target == modal3) {modal3.style.display = "none";}});
var modal4 = document.getElementById("album-modal-4");
var btn4 = document.getElementById("album-modal-button-4");
var span4 = document.getElementById("close-modal-4");
btn4.onclick = function() {modal4.style.display = "block";}
span4.onclick = function() {modal4.style.display = "none";}
$(window).click(function(event) {if (event.target == modal4) {modal4.style.display = "none";}});
var modal5 = document.getElementById("album-modal-5");
var btn5 = document.getElementById("album-modal-button-5");
var span5 = document.getElementById("close-modal-5");
btn5.onclick = function() {modal5.style.display = "block";}
span5.onclick = function() {modal5.style.display = "none";}
$(window).click(function(event) {if (event.target == modal5) {modal5.style.display = "none";}}); 

    
