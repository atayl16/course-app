// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

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

require("trix")
require("@rails/actiontext")

require("chartkick") // yarn add chartkick chart.js
require("chart.js")

import "../trix-editor-overrides"

require("jquery-ui-dist/jquery-ui");

require("selectize")

import "cocoon-js";

import "youtube"

$(document).on('turbolinks:load', function(){

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
  gsap.set("svg", { visibility: "visible" });
  gsap.to("#headStripe", {
    y: 0.5,
    rotation: 1,
    yoyo: true,
    repeat: -1,
    ease: "sine.inOut",
    duration: 1
  });
  gsap.to("#spaceman", {
    y: 0.5,
    rotation: 1,
    yoyo: true,
    repeat: -1,
    ease: "sine.inOut",
    duration: 1
  });
  gsap.to("#craterSmall", {
    x: -3,
    yoyo: true,
    repeat: -1,
    duration: 1,
    ease: "sine.inOut"
  });
  gsap.to("#craterBig", {
    x: 3,
    yoyo: true,
    repeat: -1,
    duration: 1,
    ease: "sine.inOut"
  });
  gsap.to("#planet", {
    rotation: -2,
    yoyo: true,
    repeat: -1,
    duration: 1,
    ease: "sine.inOut",
    transformOrigin: "50% 50%"
  });

  gsap.to("#starsBig g", {
    rotation: "random(-30,30)",
    transformOrigin: "50% 50%",
    yoyo: true,
    repeat: -1,
    ease: "sine.inOut"
  });
  gsap.fromTo(
    "#starsSmall g",
    { scale: 0, transformOrigin: "50% 50%" },
    { scale: 1, transformOrigin: "50% 50%", yoyo: true, repeat: -1, stagger: 0.1 }
  );
  gsap.to("#circlesSmall circle", {
    y: -4,
    yoyo: true,
    duration: 1,
    ease: "sine.inOut",
    repeat: -1
  });
  gsap.to("#circlesBig circle", {
    y: -2,
    yoyo: true,
    duration: 1,
    ease: "sine.inOut",
    repeat: -1
  });

  gsap.set("#glassShine", { x: -68 });

  gsap.to("#glassShine", {
    x: 80,
    duration: 2,
    rotation: -30,
    ease: "expo.inOut",
    transformOrigin: "50% 50%",
    repeat: -1,
    repeatDelay: 8,
    delay: 2
  });

});
