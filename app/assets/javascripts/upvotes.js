
$(document).ready(function() {


  $( ".answer-upvote" ).on( "click", function() {
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
        $( this ).remove();
      });
    });



    $( ".note-upvote" ).on( "click", function() {
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

          $( this ).remove();
        });
      });


});
