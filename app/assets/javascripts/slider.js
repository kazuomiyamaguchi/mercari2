$(function() {
    var owlMain = $("#main-slider");
    owlMain.owlCarousel({
    // ここにオプションを設置
      // item: 1,
      navigation : true, // Show next and prev buttons
      singleItem:true,
      slideSpeed : 300,//ページ送りした時のスライドスピード
      paginationSpeed : 800,//自動のスライドスピード
      autoplay: 5000,//自動でスライドするスピード。例：5000の場合、5秒
      autoWidth:true,
      autoHeight : false,
      dots:true,
      pagination : true,
    });

    var owl = $("#sub-slider");
    owl.owlCarousel({
     // ここにオプションを設置
      items: 1, // 1画面に表示するアイテム数
    });

    $(".js-dot1").on('click', function () {
        owl.trigger('to.owl.carousel', 0);
    })
    $(".js-dot2").on('click', function () {
        owl.trigger('to.owl.carousel', 1);
    })
    $(".js-dot3").on('click', function () {
        owl.trigger('to.owl.carousel', 2);
    })
    $(".js-dot4").on('click', function () {
        owl.trigger('to.owl.carousel', 3);
    });
  });
