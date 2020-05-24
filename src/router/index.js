import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import PositionsIndex from "../views/PositionsIndex.vue";
import PositionsShow from "../views/PositionsShow.vue";
import PositionsEdit from "../views/PositionsEdit.vue";
import PositionsNew from "../views/PositionsNew.vue";
import Signup from "../views/Signup.vue";
import Login from "../views/Login.vue";
import Logout from "../views/Logout.vue";
import UserProfile from "../views/UserProfile.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/user-profile/:id",
    name: "user-profile",
    component: UserProfile,
  },
  {
    path: "/positions",
    name: "positions-index",
    component: PositionsIndex,
  },
  {
    path: "/positions/new",
    name: "positions-new",
    component: PositionsNew,
  },
  {
    path: "/positions/:id/edit",
    name: "positions-edit",
    component: PositionsEdit,
  },
  {
    path: "/positions/:id",
    name: "positions-show",
    component: PositionsShow,
  },
  {
    path: "/signup",
    name: "signup",
    component: Signup,
  },
  {
    path: "/login",
    name: "login",
    component: Login,
  },
  {
    path: "/logout",
    name: "logout",
    component: Logout,
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ "../views/About.vue"),
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
