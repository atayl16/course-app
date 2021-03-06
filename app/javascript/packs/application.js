require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
global.$ = require("jquery")
require("jquery-ui")

import 'bootstrap/dist/js/bootstrap'
import "bootstrap/dist/css/bootstrap";
import "@fortawesome/fontawesome-free/css/all"
require("stylesheets/application.scss")
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// require("trix")
require("@rails/actiontext")
// import "../trix-editor-overrides"

require("chartkick") // yarn add chartkick chart.js
require("chart.js")

require("selectize")

import "cocoon-js";
import "youtube"

$( document ).on('turbolinks:load', function() {
 tinymce.remove();
  tinymce.init({
    selector: 'textarea#full-featured-non-premium',
    plugins: 'print preview paste importcss searchreplace autolink autosave save code visualblocks visualchars fullscreen image link media charmap hr pagebreak nonbreaking anchor toc insertdatetime advlist lists wordcount imagetools textpattern noneditable help charmap autoresize emoticons',
    imagetools_cors_hosts: ['picsum.photos'],
    menubar: 'file edit view insert format tools help',
    toolbar: 'undo redo | bold italic underline strikethrough | fontselect fontsizeselect formatselect | alignleft aligncenter alignright alignjustify | outdent indent |  numlist bullist | forecolor backcolor removeformat | pagebreak | charmap emoticons | fullscreen  preview save print | insertfile image media link anchor | ltr rtl',
    toolbar_sticky: true,
    autosave_ask_before_unload: true,
    autosave_interval: "30s",
    autosave_prefix: "{path}{query}-{id}-",
    autosave_restore_when_empty: false,
    autosave_retention: "2m",
    image_advtab: true,
    content_css: './stylesheets/application.scss',
    content_style: "body { font-family: Arial; font-size: 18px; }",
    importcss_append: true,
    file_picker_callback: function (callback, value, meta) {
      /* Provide file and text for the link dialog */
      if (meta.filetype === 'file') {
        callback('https://www.google.com/logos/google.jpg', { text: 'My text' });
      }

      /* Provide image and alt text for the image dialog */
      if (meta.filetype === 'image') {
        callback('https://www.google.com/logos/google.jpg', { alt: 'My alt text' });
      }

      /* Provide alternative source and posted for the media dialog */
      if (meta.filetype === 'media') {
        callback('movie.mp4', { source2: 'alt.ogg', poster: 'https://www.google.com/logos/google.jpg' });
      }
    },
    height: 520,
    image_caption: true,
    noneditable_noneditable_class: "mceNonEditable",
    toolbar_mode: 'sliding',
    min_height: 350,
    image_dimensions: false,
          image_class_list: [
            {title: 'Responsive', value: 'img-responsive'}
          ]
  });

  $('.chapter-sortable').sortable({
    axis        : "y",
    cursor      : "grabbing",
    placeholder : "ui-state-highlight",

    update: function(_, ui){
      let item      = ui.item
      let itemData  = item.data()
      let params    = { _method: 'put' }

      params[itemData.modelName] = { row_order_position: item.index() }

      $.ajax({
        type     : 'POST',
        url      : itemData.updateUrl,
        dataType : 'json',
        data     : params
      })
    },
  })

  $('.lesson-sortable').sortable({
    axis        : "y",
    cursor      : "grabbing",
    placeholder : "ui-state-highlight",
    connectWith : '.lesson-sortable',

    update: function(_, ui){
      if (ui.sender) return

      let item      = ui.item
      let itemData  = item.data()
      let chapterID    = item.parents('.ui-sortable-handle').eq(0).data().id
      let params    = { _method: 'put' }

      params[itemData.modelName] = { row_order_position: item.index(), chapter_id: chapterID }

      $.ajax({
        type     : 'POST',
        url      : itemData.updateUrl,
        dataType : 'json',
        data     : params
      })
    }
  })

  $("video").bind("contextmenu",function(){
      return false;
  });

    if ($('.selectize')){
      $('.selectize').selectize({
          sortField: 'text'
      });
  }

  $(".selectize-tags").selectize({
    create: function(input, callback) {
      $.post('/tags.json', { tag: { name: input } })
        .done(function(response){
          console.log(response)
          callback({value: response.id, text: response.name });
        })
    }
  });
});
