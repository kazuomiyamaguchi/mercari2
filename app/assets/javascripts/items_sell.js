$(function(){
  $('.sell-body-price-main-input__box__yen').keyup(function(){
    var price = $('.sell-body-price-main-input__box__yen').val();
    var commission = price * 0.1
        commission = Math.floor(commission);
        commission = String(commission).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
    var profit = price - commission
        profit = Math.floor(profit);
        profit_string = String(profit).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');

    if (price >= 300 && 9999999 >= price){
      $('.sell-body-price-main-commission__box__ans').html("￥" + commission);
      $('.sell-body-price-main-profit__box__ans').html("￥" + profit_string);
    }
    else{
      $('.sell-body-price-main-commission__box__ans').text("ー");
      $('.sell-body-price-main-profit__box__ans').text("ー");
    }
  });
});
