$.fn.stars = function() {
    return $(this).each(function() {
        // Get the value
        var val = parseFloat($(this).html());
        // Make sure that the value is in 0 - 5 range, multiply to get width
        var size = Math.max(0, (Math.min(5, val))) * 16;
        // Create stars holder
        var $span = $('<span />').width(size);
        // Replace the numerical value with stars
        $(this).html($span);
    });
}

$(function starring() {
    $('span.stars').stars();
  });

// $(document).ready(function(){

//     var par = $('.comments');
//     $(par).hide();

//     $(".hide-comments").click(function(){
//         $(this).parent().parent().find(".comments").hide();
//     });

//     $(".show-comments").click(function(){
//         $(this).parent().parent().find(".comments").show();
//     });
// });

$(document).ready(function() {
          $('.show-comments').click(function(){
            //get collapse content selector
            var collapse_content_selector = $(this).attr('href');                
 
            //make the collapse content to be shown or hide
            var toggle_switch = $(this);
            $(collapse_content_selector).toggle(function(){
              if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
                toggle_switch.html('Show Comments');
              }else{
                                //change the button label to be 'Hide'
                toggle_switch.html('Hide Comments');
              }
            });
          });
 
        });