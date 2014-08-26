
$(document).ready(function() {


  $( ".answer-upvote" ).on( "click", function() {
    type = $( this ).attr("type");
    id = $( this ).attr("obj_id");
    $.ajax({
      type: 'POST',
      data: {
        "upvote[type]": type,
        "upvote[obj_id]": id
      },
      url: "/upvotes/",
      }).done(function() {
        alert("It worked");
      });
    });
    

  $( ".question-upvote" ).on( "click", function() {
    type = $( this ).attr("type");
    id = $( this ).attr("obj_id");
    $.ajax({
      type: 'POST',
      data: {
        "upvote[type]": type,
        "upvote[obj_id]": id
      },
      url: "/upvotes/",
      }).done(function() {
        alert("It worked");
      });
    });


    $( ".note-upvote" ).on( "click", function() {
      type = $( this ).attr("type");
      id = $( this ).attr("obj_id");
      $.ajax({
        type: 'POST',
        data: {
          "upvote[type]": type,
          "upvote[obj_id]": id
        },
        url: "/upvotes/",
        }).done(function() {
          alert("It worked");
        });
      });


});
