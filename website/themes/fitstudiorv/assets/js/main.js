// JavaScript Document

$(document).ready(function() {
$("#owl-demo").owlCarousel({

  navigation : true,
  slideSpeed : 300,
  paginationSpeed : 400,
  singleItem : true,
  autoPlay: 5000,
  navigationText: ['<span class="glyphicon glyphicon-chevron-left"></span>','<span class="glyphicon glyphicon-chevron-right"></span>']
  
  // "singleItem:true" is a shortcut for:
  // items : 1,
  // itemsDesktop : false,
  // itemsDesktopSmall : false,
  // itemsTablet: false,
  // itemsMobile : false
  
  });
});