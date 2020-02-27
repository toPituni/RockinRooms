import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout! - done!

import { initMapbox } from '../plugins/init_mapbox';

flatpickr(".datepicker", {
altInput: true,
enableTime: true,

});


initMapbox();
