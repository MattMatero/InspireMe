$(document).ready(function(){
  setTimeout(function(){
    $('#flash').remove();
  }, 3000);
})
 
$(function() {
  $('#flash').delay(500).fadeIn('normal', function() {
    $(this).delay(1500).fadeOut();
  });
});