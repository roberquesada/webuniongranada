(function($){

  // Vars

  // Functions

  function createEventImages(){
    $('.Event-item').each(function(){
      if ($(window).width() > 639) {
        imagesHeight($(this));
      }
      generateImages($(this));
    });
  }

  function resizeEventImage(){
    $('.Event-item').each(function(){
      if ($(window).width() < 640) {
        imagesHeightReset($(this));
      } else {
        imagesHeight($(this));
      }
    });
  }

  function imagesHeight(item) {
    var item = item
    var itemHeight = item.find('.Event-itemText').height()
    var itemImage = item.find('.Event-itemImage')
    itemImage.css('height', itemHeight)
  }

  function imagesHeightReset(item) {
    var itemImage = item.find('.Event-itemImage')
    itemImage.css('height', 200)
  }

  function generateImages(item) {
    var item = item
    var itemImage = item.find('.Event-itemImage')
    var dataImage = itemImage.find('img').data('image')
    var imageUrl = '/images/' + dataImage + '/'
    itemImage.css('background-image', 'url(' + imageUrl + ')')
  }

  function init() {
    createEventImages();
  }

  // Events
  $(window).on('load', init);
  $(window).on('resize', resizeEventImage)

})(jQuery);
