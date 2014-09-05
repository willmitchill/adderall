
$(document).ready(function() {


  $( ".answer-upvote" ).on( "click", function() {
    var $this = $(this);
    var type = $( this ).attr("type");
    var id = $( this ).attr("obj_id");
    $.ajax({
      type: 'POST',
      data: {
        "upvote[type]": type,
        "upvote[obj_id]": id
      },
      url: "/upvotes/",
      }).done(function() {
        var currentUpvoteValue = $this.parent('.answer').children('.answer-upvotes').children('span').first().text();
        var newUpvoteValue = parseInt(currentUpvoteValue) + 1;
        $this.parent('.answer').children('.answer-upvotes').children('span').first().text(newUpvoteValue);
        $this.remove();
      });
    });



    $( ".note-upvote" ).on( "click", function() {
      var $this = $(this);
      var type = $( this ).attr("type");
      var id = $( this ).attr("obj_id");
      $.ajax({
        type: 'POST',
        data: {
          "upvote[type]": type,
          "upvote[obj_id]": id
        },
        url: "/upvotes/",
        }).done(function() {
          var currentUpvoteValue = $this.parent('.notes').children('.note-upvotes').children('span').first().text();
          var newUpvoteValue = parseInt(currentUpvoteValue) + 1;
          $this.parent('.notes').children('.note-upvotes').children('span').first().text(newUpvoteValue);
          $this.remove();
        });
      });


});
