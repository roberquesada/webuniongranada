(function($){

  // Vars

  // Functions

  function createEventImages(){
    $('.Event-item').each(function(){
      generateImages($(this));
    });
  }

  function imagesHeight(item) {
    var item = item
    var itemHeight = item.find('.Event-itemText').height()
    var itemImage = item.find('.Event-itemImage')
    itemImage.css('height', itemHeight)
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
  // $(window).on('load', init);

})(jQuery);
