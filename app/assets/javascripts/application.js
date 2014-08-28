// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {

  var jobCount = $('#list .in').length;
  $('.list-count').text(jobCount + ' items');


  $("#search-text").keyup(function () {
     //$(this).addClass('hidden');

    var searchTerm = $("#search-text").val();
    var listItem = $('#list').children('li');


    var searchSplit = searchTerm.replace(/ /g, "'):containsi('")

      //extends :contains to be case insensitive
  $.extend($.expr[':'], {
  'containsi': function(elem, i, match, array)
  {
    return (elem.textContent || elem.innerText || '').toLowerCase()
    .indexOf((match[3] || "").toLowerCase()) >= 0;
  }
});


    $("#list li").not(":containsi('" + searchSplit + "')").each(function(e)   {
      $(this).addClass('hiding out').removeClass('in');
      setTimeout(function() {
          $('.out').addClass('hidden');
        }, 600);
    });

    $("#list li:containsi('" + searchSplit + "')").each(function(e) {
      $(this).removeClass('hidden out').addClass('in');
      setTimeout(function() {
          $('.in').removeClass('hiding');
        }, 1);
    });


      var jobCount = $('#list .in').length;
    $('.list-count').text(jobCount + ' items');

  });

// flashcards

var transitionDuration = $('.cards .card').css('transition-duration');

/* Click/tap to switch card */
$('.card').on('click', function() {
  var $cards = $(this).parent();
  $cards.addClass('animating');
  $cards.find('.card').toggleClass('active');
  var timeOut = setTimeout(
    function() {
      // Some event halway through animation
    }, transitionDuration);
});

/* On amimation end animate back */
$('.card').on('transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd', 
  function() {
    $(this).parent().removeClass('animating');
  }
);

});
