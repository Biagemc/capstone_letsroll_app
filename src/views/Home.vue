<template>
  <div id="landing" class="home">
    <div
      class="page-header header-filter"
      data-parallax="true"
      style="background-image: url('https://res.cloudinary.com/biagemc/image/upload/v1588214380/letsRoll%20App/jiu-photo-1_g9ovmo.jpg')"
    >
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h1 class="title">Your Jiu-Jitsu will raise to another level.</h1>
            <h4>
              Now you have no excuses, it&apos;s time to level up your positions, because your competitors will. You
              probably won&apos;t have a better chance to unlock all your potential.
            </h4>
            <br />
            <div class="row justify-content-around">
              <div class="button col-9">
                <a id="btn-signup" href="/signup" class="btn btn-danger btn-raised btn-lg">
                  <i class="fa fa-play"></i>
                  Signup
                  <div class="ripple-container"></div>
                </a>
                <a id="btn-login" href="/login" class="btn btn-info btn-raised btn-lg">
                  <i class="fa fa-play"></i>
                  Login
                  <div class="ripple-container"></div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="main main-raised">
      <div class="container">
        <div class="section text-center">
          <div class="row">
            <div class="col-md-8 ml-auto mr-auto">
              <h2 class="title">Let&apos;s Roll</h2>
              <h5 class="description">
                Here you can browse positions you are looking for to practice and improve. You can comment and ask if
                you have any questions. Here you will find the edge to level up your game.
              </h5>
            </div>
          </div>
          <div class="features">
            <div class="row">
              <div class="col-md-4">
                <div class="info">
                  <div class="icon icon-info">
                    <i class="material-icons">chat</i>
                  </div>
                  <h4 class="info-title">Comment</h4>
                  <p>Ask questions to get the most details on the positions you like.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="info">
                  <div class="icon icon-success">
                    <i class="material-icons">check</i>
                  </div>
                  <h4 class="info-title">Best Athletes</h4>
                  <p>Select on an easy way the best positions that you are looking for.</p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="info">
                  <div class="icon icon-danger">
                    <i class="material-icons">favorite</i>
                  </div>
                  <h4 class="info-title">Favorite</h4>
                  <p>Select and save to your library your favourite positions.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.marketing {
  padding: 10rem 3rem 10rem 3rem;
}

#btn-login,
#btn-signup {
  width: 10rem;
  padding: 1rem;
}
</style>

<script>
import Vue2Filters from "vue2-filters";

export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {};
  },
  created: function() {},
  methods: {},
};
</script>
