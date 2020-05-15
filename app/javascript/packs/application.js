require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
import { DisableButtonForm } from "../components/form";
import { transparentScroll } from "../components/navbar";

// document.addEventListener("turbolinks:load", () => {
//   DisableButtonForm();
// });

import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  DisableButtonForm();
  transparentScroll();
  
  if (document.getElementById('map')) {
    initMapbox();
  }
  
  const a = document.getElementById('course_online');
  if (a) {
    a.addEventListener('change', (e) => {
      document.getElementById('address-container').classList.toggle('hidden');

    })
  }
})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
