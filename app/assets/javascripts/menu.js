$(function() {
  $(".pc-header-nav li ul").hide();
  $(".pc-header-nav li").hover(function() {
    $(">ul", this).stop(true, true).slideDown(100);
    $(">a", this).addClass("active");
  },
  function() {
    $(">ul", this).stop(true, true).slideUp("fast");
    $(">a", this).removeClass("active");
  });
});
