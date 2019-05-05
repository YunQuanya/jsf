
var appendNumber = 4;
var prependNumber = 1;
var swiper = new Swiper('.swiper-container', {
    autoplay: 2000,//可选选项，自动滑动
    pagination: '.swiper-pagination',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    slidesPerView: 3,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30,
    loop: true,
});
//
// // 加入我们接口的调用
// function loadProvinceIndex() {
//     $.ajax({
//         url: BasicUrl + "/liking/get-province",
//         type: "post",
//         dataType: "json",
//         success: function (res) {
//             var provinceData = res.data
//             $.each(provinceData, function (index, province) {
//                 // console.log(province.province_name)
//                 $('#provinceNameIndex').append(
//                     '<option value="' + province.province_id + '">' + province.province_name + '</option>'
//                 )
//             })
//         }
//     })
// }
//
// $(function () {
//     loadProvinceIndex()
//     $("#provinceNameIndex").change(function () {
//         $('#cityNameIndex option:gt(0)').remove()
//         var provinceId = $('#provinceNameIndex').val();
//         $.ajax({
//             url: BasicUrl + "/liking/get-city",
//             type: "GET",
//             data: {
//                 province_id: provinceId
//             },
//             dataType: "json",
//             success: function (res) {
//                 var cityData = res.data
//                 $('#cityNameIndex option:gt(0)').remove()
//                 $.each(cityData, function (index, city) {
//                     var cityName = city.city_name
//                     $('#cityNameIndex').append(
//                         '<option value="'+city.city_id+'">' + city.city_name + '</option>'
//                     )
//                 })
//             }
//         })
//     });
//
//     $('#joinsubmitIndex').click(function () {
//         var sendName = $('.nameIndex').val();
//         // console.log(sendName)
//         var sendPhone = $('.numberIndex').val();
//         var sendCityId = $('#cityNameIndex').val();
//         // console.log(sendName)
//         $.ajax({
//             url: BasicUrl + "/liking/join",
//             type: "post",
//             dataType: "json",
//             data: {
//                 name: sendName,
//                 phone: sendPhone,
//                 city_id: sendCityId
//             },
//             success: function (res) {
//                 if (res.err_code != 0) {
//                     $('.err_msgIndex').text(res.errMsg)
//                 }
//             }
//         })
//     })
// })
