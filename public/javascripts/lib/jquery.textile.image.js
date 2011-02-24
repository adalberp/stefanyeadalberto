// Simple plugin to convert images to valid textile markup
//=================
// HTML
// <div class="media">
//   <a href="full.jpg">
//     <img src="thumb.jpg"/>
//   </a>
// </div>
//=================
// JS
// $(".media").insertTextileImageTo("#post_body");

(function($) {

  jQuery.fn.insertTextileImageTo = function(destination) {

    $(this).find('a').live("click", function(){
      var textileVersion = "!" + $(this).attr('href') + "!";
      var currentText    = $(destination).val();

      $(destination).val(currentText + " " + textileVersion);
      return false;
    });

    return this;
  };

})(jQuery);
