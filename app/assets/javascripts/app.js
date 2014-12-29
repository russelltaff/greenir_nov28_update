// function colorNav() {
//   $(window).on("scroll", function(e) {
//     var top_of_middle_section = ($('.second_section').position().top - 55);
//     if(scrollY > top_of_middle_section) {
//       darkHeader();
//     } else {
//       lightHeader();
//     }
//   });
// }

// function lightHeader() {
//   $('.nav a, .navbar-brand')
//         .css("color", "white")
//         .hover(function() {
//           $(this).css("color", "rgb(49, 240, 103)");
//         }, function() {
//           $(this).css("color", "white");
//         });
// }
// function darkHeader() {
//   $('.nav a, .navbar-brand')
//         .css("color", "#333")
//         .hover(function() {
//           $(this).css("color", "rgb(49, 240, 103)");
//         }, function() {
//           $(this).css("color", "#333");
//         });
// }
function faqSlide(){
  $('.faq_title').on("click", function(e) {
    $(this).siblings(".faq_answer").slideToggle();
  })
}


