import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
import VueYoutube from "vue-youtube";
import Vue2Filters from "vue2-filters";
import ProgressBar from "vuejs-progress-bar";
import Cloudinary from "cloudinary-vue";
import { CldContext, CldImage, CldVideo, CldTransformation, CldPoster } from "cloudinary-vue";

Vue.use(ProgressBar);
Vue.use(Vue2Filters);
Vue.use(VueYoutube);

axios.defaults.baseURL = process.env.NODE_ENV === "development" ? "http://localhost:3000" : "/";

var jwt = localStorage.getItem("jwt");
if (jwt) {
  axios.defaults.headers.common["Authorization"] = "Bearer " + jwt;
}

Vue.config.productionTip = false;

new Vue({
  router,
  render: h => h(App),
}).$mount("#app");
