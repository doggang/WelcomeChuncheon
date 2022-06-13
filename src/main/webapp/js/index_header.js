$(function(){
    var shrinkHeader = 10;
     $(window).scroll(function() {
       var scroll = getCurrentScroll();
         if ( scroll >= shrinkHeader ) {
              $('header').addClass('shrink');
           }
           else {
               $('header').removeClass('shrink');
           }
     });
   function getCurrentScroll() {
       return window.pageYOffset || document.documentElement.scrollTop;
       }
   });


   $(document).ready(function(){
        $('.menu_btn>a').on('click', function(){
        $('.menu_bg').show(); 
        $('.sidebar_menu').show().animate({
           right:0
        });   
        });
        $('.close_btn>a').on('click', function(){
        $('.menu_bg').hide(); 
        $('.sidebar_menu').animate({
           right: '-' + 50 + '%'
                    },function(){$('.sidebar_menu').hide(); }); 
        });
   });