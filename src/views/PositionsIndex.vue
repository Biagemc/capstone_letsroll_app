<template>
  <div class="positions-index">
    <div class="main main-raised">
      <div class="row">
        <div class="col-md-2 ml-auto">
          <div class="card card-refine card-plain card-rose">
            <div class="card-body">
              <h4 class="card-title">
                Refine Search
                <button
                  class="btn btn-default btn-fab btn-fab-mini btn-link pull-right"
                  rel="tooltip"
                  title
                  data-original-title="Reset Filter"
                >
                  <i class="material-icons">cached</i>
                </button>
              </h4>
              <div id="accordion" role="tablist">
                <!-- form begin -->
                <form class="justify-content-center" v-on:submit.prevent="submit()">
                  <div class="card card-collapse">
                    <div class="form-group">
                      <input type="text" class="form-control" v-model="nameFilter" list="names" placeholder="Search" />
                      <datalist id="names">
                        <option v-for="position in positions">{{ position.name }}</option>
                      </datalist>
                    </div>
                    <!-- Type selection Form Begin -->

                    <div class="form-group">
                      <label for="inputState">Choose Types...</label>

                      <select
                        role="tab"
                        id="inputState"
                        class="form-control selectpicker"
                        data-style="select-with-transition"
                        v-bind:on-change="updateSelected(typeSelected)"
                        v-model="typeSelected"
                      >
                        <option disabled>Choose Type...</option>
                        <option></option>
                        <option>drills</option>
                        <option>sweeping</option>
                        <option>takedown</option>
                        <option>mounting</option>
                        <option>passing</option>
                        <option>submission</option>
                      </select>
                    </div>

                    <!-- Type selection form End -->
                    <!-- Tags selection form begin -->
                    <div class="card card-collapse">
                      <div class="form-group">
                        <div class="card-header" role="tab" id="headingThree">
                          <h5 class="mb-0">
                            <a
                              class
                              data-toggle="collapse"
                              href="#collapseThree"
                              aria-expanded="false"
                              aria-controls="collapseThree"
                            >
                              Tags
                              <i class="material-icons">keyboard_arrow_down</i>
                            </a>
                          </h5>
                        </div>
                        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" style>
                          <div class="card-body">
                            <div v-for="tag in tags" class="form-check">
                              <label class="form-check-label">
                                <input
                                  class="form-check-input"
                                  type="checkbox"
                                  v-bind:value="tag.id"
                                  v-model="tagsSelected"
                                />
                                {{ tag.name }}
                                <span class="form-check-sign">
                                  <span class="check"></span>
                                </span>
                              </label>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Tags selection form end -->
                    <button type="submit" class="btn btn-primary btn-sm">Search</button>
                  </div>
                </form>
                <!-- End form -->
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-9 ml-auto mr-auto text-center">
          <div id="top-container" class>
            <h3 class="h2">{{ message }}</h3>
          </div>
          <div class="container">
            <div class="row">
              <div
                id="listing"
                class="card card-profile ml-auto mr-auto"
                style="max-heigth: 100px;max-width: 280px;"
                v-bind:key="position.id"
                v-for="position in orderBy(filterBy(positions, nameFilter, 'name'), sortAttribute, 1)"
                v-on:click="currentPosition === position"
              >
                <div class="card-header card-header-image">
                  <div class="iframe-container embed-responsive embed-responsive-16by9">
                    <youtube
                      class="embed-responsive-item"
                      style="max-width: 280px;"
                      gesture="media"
                      allow="encrypted-media"
                      allowfullscreen
                      v-bind:video-id="getVideoId(position.url)"
                      ref="youtube"
                      @playing="playing"
                    ></youtube>
                  </div>
                </div>
                <div class="card-body">
                  <button
                    v-on:click="addToFavourites(position.id)"
                    class="btn btn-default btn-fab btn-fab-mini btn-link pull-right"
                  >
                    <i class="material-icons">add_circle_outline</i>
                  </button>
                  <a class="card-title" v-bind:href="`/positions/${position.id}`">{{ position.name }}</a>
                  <p class="card-text">{{ position.description.substr(0, 80) + "..." }}</p>
                  <p class="card-category text-gray">{{ position.type }}</p>

                  <div class="card-footer justify-content-center">
                    <div class="row">
                      <div class="col-12" v-bind:key="tag.id" v-for="tag in position.tags">
                        <div class="bootstrap-tagsinput warning-badge col-1">
                          <span href="#" class="tag badge">#{{ tag.name }}</span>
                        </div>
                      </div>
                    </div>
                  </div>
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
#video-card {
  width: 300px;
  height: auto;
  resize: vertical;
}

#top-header {
  text-align: center;
  font-size: 1.2rem;
  font-family: "Montserrat-Light";
}

#listing {
  padding: 0;
}

#card-list {
  padding: 2rem;
}

.positions-index {
  padding-top: 10rem;
}
.card-title {
  padding: 1rem;
}
</style>

<script>
import axios from "axios";
import { getIdFromUrl } from "vue-youtube";
import Vue2Filters from "vue2-filters";

export default {
  mixins: [Vue2Filters.mixin],
  data: function() {
    return {
      message: "Positions",
      positions: [],
      tags: [],
      tagsSelected: [],
      currentPosition: {},
      nameFilter: "",
      sortAttribute: "name",
      selected: "",
      typeSelected: "",
      playerVars: {
        autoplay: 1,
      },
      newsFeed: [],
    };
  },
  created: function() {
    axios.get("/api/positions").then(response => {
      console.log(response.data);
      this.positions = response.data.positions;
      this.tags = response.data.tags;
    });
  },
  methods: {
    playing() {
      console.log("o/ we are watching!!!");
    },
    getVideoId(url) {
      let videoId = getIdFromUrl(url);
      return videoId;
    },
    submit: function() {
      var tagsFiltered = this.tagsSelected.filter(tag => tag !== Object);
      var tagsArray = JSON.stringify(tagsFiltered);
      var tagsSelectedUrl = "";
      var typeSelectedUrl = "";

      if (this.typeSelected !== "") {
        typeSelectedUrl = "type=" + this.typeSelected;
      }
      if (tagsFiltered.length > 0 && this.typeSelected !== "") {
        tagsSelectedUrl += "&tag=" + tagsArray;
      } else if (tagsFiltered.length > 0) {
        tagsSelectedUrl += "tag=" + tagsArray;
      }

      axios.get(`/api/positions?${typeSelectedUrl}${tagsSelectedUrl}`).then(response => {
        console.log(response.data);
        this.positions = response.data.positions;
        this.tags = response.data.tags;
        this.typeSelected = "";
        var typeSelectedUrl = "";
        var tagsSelectedUrl = "";
      });
    },
    updateSelected: function(valueSelected) {
      this.typeSelected = valueSelected;
    },
    addToFavourites: function(positionId) {
      let params = {
        position_id: positionId,
        user_id: this.$parent.getUserId(),
      };

      axios.post("/api/favourites", params).then(response => {
        console.log(response.data);
      });
    },
  },
};
</script>
