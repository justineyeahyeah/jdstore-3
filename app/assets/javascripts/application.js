// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.raty
//= require turbolinks
//= require_tree .




//商品页数量加入购物车数量增减
$(document).on('turbolinks:load', function() {
  /*增加数量*/
  $("#quantity-plus").click(function(e) {
    var num = parseInt($("#quantity-input").val()) + 1;
    $("#quantity-minus").removeClass("disabled");
    $("#quantity-input").val(num);
    e.preventDefault();
  });

  /*减少数量*/
  $("#quantity-minus").click(function(e) {
    var num = parseInt($("#quantity-input").val());
    if (num > 1) {
      $("#quantity-input").val(num -= 1);
      $("#quantity-plus").removeClass("disabled");
    }
    if (num <= 1) {
      $("#quantity-minus").addClass("disabled");
    }
    e.preventDefault();
  });
});



//Rating
$(document).ready(function() {
$('.star-rating').raty({
			path: '/images/',
					readOnly: true,
					score: function() {
				return $(this).attr('data-score');
			}
});

$('#star-rating').raty({
path: '/images/',
scoreName: 'comment[rating]'
});


<!-- 必须要选一颗星 -->
$('#star-rating img').eq(0).trigger('click')
