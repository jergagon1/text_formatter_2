$(document).ready(function(){
  console.log("ready!");
  // create event listener for form
  // submit ajax call to server
  $(".paragraph-submission-form").on("submit", function(event){
    event.preventDefault();
    console.log("form button clicked!");
    var formData = $(this).serialize();
    console.log(formData);
    var action = $(this).attr("action");
    var method = $(this).attr("method");
    $.ajax({
      url: action,
      type: method,
      data: formData,
      dataType: "json"
    })
    .done(function(response){
      console.log("success");
      console.log(response);
      // unable to resolve cors issues
      // append corrected paragraph to formatted-paragraph
      // append meta paragraph to meta-paragraph

    })
    .fail(function(){
      console.log("Error");
    })

  });


});