//
// // 加入我们ajax的调用
// // const BasicUrl = "https://manage.likingfit.com";
// $(document).ready(function () {
//     function PC_style() {
//         $('.commonNavUl>li').mouseover(function () {
//             $(this).children('.commonNavUl-list').stop().show('200');
//         }).mouseout(function (event) {
//             $(this).children('.commonNavUl-list').stop().hide('200');
//         });
//         $('.commonNavUl>li').click(function (event) {
//             $(this).addClass('activeAdd').siblings('li').removeClass('activeAdd');
//         });
//     }
//     function M_style() {
//         //导航点击
//         $('.commonNavUl li').removeClass('active');
//         if($('.commonNavUl > li').hasClass('click_M')){
//             $('.click_M>a').click(function(event) {
//                  event.stopPropagation();
//             });
//         }
//         $('.commonNavUl > li').click(function (event) {
//             if ($(this).hasClass('open')) {
//                 $(this).removeClass('open');
//                 $(this).children('.commonNavUl-list').hide();
//             } else {
//                 $(this).addClass('open').siblings('li').removeClass('open');
//                 $(this).children('.commonNavUl-list').show();
//             }
//             return false;
//
//         });
//         $('.commonNavUl ul li').click(function (event) {
//             event.stopPropagation();
//         })
//
//         var navBarOpenFlg = false;
//
//         $('.navbar-toggle').click(function () {
//             navBarOpenFlg = !navBarOpenFlg;
//             var ww = $(window).width();
//             var wh = $(window).height();
//             if (navBarOpenFlg) {
//                 $('.commonNavUl').css('display','block')
//                 $("html").css({
//                     "overflow": "hidden",
//                     "height": wh,
//                     "width": ww,
//                     'position':'fixed',
//                     'top':'0',
//                     'z-index':'0'
//                 })
//                 $("body").css({"overflow": "hidden", "height": wh, "width": ww})
//             } else {
//                 $('.commonNavUl').css('display','none')
//                 $("html").css({
//                     "overflow": "auto",
//                     "height": "auto",
//                     "width": "auto",
//                     'position':'relative'
//                 })
//                 $("body").css({"overflow": "auto", "height": "auto", "width": "auto"})
//             }
//         })
//
//     }
//
//     var windowW = $(window).width();
//     if (windowW <= 1024) {
//         M_style();
//     } else {
//         PC_style()
//     }
//     // 弹窗适配
//     var width=$(window).width()
//     if(width>1000){
//     }else if(width<=640&&width>321){
//         $('.bs-example-modal-lg').on('shown.bs.modal', function (e) {
//             $('.modal-content').css({
//                 width:'320px',
//                 height:'400px',
//                 margin:'0 auto',
//
//             });
//             $('.jrwm-bg').css('height','400px')
//         })
//     }else if(width=320){
//         $('.bs-example-modal-lg').on('shown.bs.modal', function (e) {
//             $('.modal-content').css({
//                 width:'300px',
//                 height:'400px',
//                 margin:'0 auto',
//
//             });
//             $('.jrwm-bg').css('height','400px')
//             $('#dropdown-menu').css('width','100px')
//         })
//     }
//     // ipd端的适配、
//     var ua = window.navigator.userAgent.toLowerCase();
//     if (ua.indexOf('ipad') != -1) {
//         // $('.contentPC').css('display', 'none')
//         // $('.contentPid').css('display', 'block')
//         // alert('当前为pad设备，在pc端浏览效果更佳')
//     }
// });
//
// //百度统计代码
// var _hmt = _hmt || [];
// (function() {
//   var hm = document.createElement("script");
//   hm.src = "https://hm.baidu.com/hm.js?1a407952af7765a4c7211bf07673d617";
//   var s = document.getElementsByTagName("script")[0];
//   s.parentNode.insertBefore(hm, s);
// })();
