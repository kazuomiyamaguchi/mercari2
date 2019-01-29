$(function() {
    var owl = $(".owl-carousel");
    owl.owlCarousel({
     // ここにオプションを設置
      items: 1, // 1画面に表示するアイテム数
    });

    $(".dot1").on('click', function () {
        owl.trigger('to.owl.carousel', 0);
    })
    $(".dot2").on('click', function () {
        owl.trigger('to.owl.carousel', 1);
    })
    $(".dot3").on('click', function () {
        owl.trigger('to.owl.carousel', 2);
    })
    $(".dot4").on('click', function () {
        owl.trigger('to.owl.carousel', 3);
    });
  });
