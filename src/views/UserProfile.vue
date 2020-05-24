<template>
  <div class="user-profile">
    <div class="main main-raised">
      <div class="profile-content">
        <div class="container">
          <div class="row">
            <div id="top-profile" class="col-md-3 ml-auto mr-auto">
              <div class="profile text-center">
                <h3 class="h3">{{ message }}</h3>
                <div class="avatar">
                  <img
                    v-bind:src="userData.avatar"
                    alt="Circle Image"
                    class="img-raised rounded-circle img-fluid"
                    width="150px"
                  />
                </div>
                <div class="name">
                  <h3 class="title">{{ userData.name }}</h3>
                  <h6>{{ userData.city }}</h6>
                </div>
              </div>
            </div>
          </div>
          <div class="description text-center">
            <p>{{ userData.gym }}</p>
            <p>{{ userData.afiliation }}</p>
          </div>
          <div class="row">
            <div class="col-md-6 ml-auto mr-auto">
              <div class="profile-tabs">
                <ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
                  <li class="nav-item">
                    <a class="nav-link active" href="#personal" role="tab" data-toggle="tab">
                      <i class="material-icons">face</i>
                      Personal
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#positions" role="tab" data-toggle="tab">
                      <i class="material-icons">palette</i>
                      My Positions
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#favourites" role="tab" data-toggle="tab">
                      <i class="material-icons">palette</i>
                      My Favourites
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="tab-content tab-space">
            <div class="tab-pane active text-center gallery" id="personal">
              <!-- Insert content related to personal section -->
              <div v-if="editMode === false" class="row">
                <div class="col-md-3 ml-auto">
                  <div class="col-md-1">
                    <h4 class="h4">
                      <button
                        v-on:click="editMode = true"
                        class="btn btn-default btn-fab btn-fab-mini btn-link pull-right"
                        rel="tooltip"
                        title
                        data-original-title="Update Info"
                      >
                        <i class="material-icons">settings</i>
                      </button>
                    </h4>
                  </div>
                  <span class="description">Name:</span>
                  <h6>{{ userData.name }}</h6>

                  <span class="description">Email:</span>
                  <h6>{{ userData.email }}</h6>
                </div>
                <div class="col-md-3 mr-auto">
                  <span class="description">Gym:</span>
                  <h6>{{ userData.gym }}</h6>
                  <span class="description">Afiliation:</span>
                  <h6>{{ userData.afiliation }}</h6>
                  <span class="description">Current Belt:</span>
                  <h6>{{ userData.belt }}</h6>
                </div>
              </div>
              <div v-if="editMode === true" class="row">
                <div class="col-md-8 ml-auto mr-auto">
                  <h4 class="h4">Upload Image:</h4>
                  <div class="cloudinary-uploader col-md-7 ml-auto mr-auto">
                    <input type="file" class="form-control" v-on:change="onFileSelected($event)" />
                    <span class="input-group-btn">
                      <button @click="onUpload()" type="button" class="btn btn-sm btn-primary">
                        <i class="material-icons">attach_file</i>
                        Upload
                      </button>
                    </span>
                  </div>
                  <div v-if="photoInfo && photoInfo.secure_url">
                    <img :src="photoInfo.secure_url" />
                  </div>
                  <form v-on:submit.prevent="submit()">
                    <h4 class="h4">Update My Info</h4>
                    <ul>
                      <li class="text-danger" v-for="error in errors">{{ error }}</li>
                    </ul>
                    <div class="row">
                      <div class="col-md-8 ml-auto mr-auto">
                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>Name:</label>
                            <input type="text" class="form-control" v-model="userData.name" />
                          </div>
                        </div>

                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>Email:</label>
                            <input type="text" class="form-control" v-model="userData.email" />
                          </div>
                        </div>
                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>Gym:</label>
                            <input type="text" class="form-control" v-model="userData.gym" />
                          </div>
                        </div>
                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>Afiliation:</label>
                            <input type="text" class="form-control" v-model="userData.afiliation" />
                          </div>
                        </div>
                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>Belt:</label>
                            <input type="text" class="form-control" v-model="userData.belt" />
                          </div>
                        </div>
                        <div class="row">
                          <div class="form-group col-md-10 ml-auto mr-auto">
                            <label>City:</label>
                            <input type="text" class="form-control" v-model="userData.city" />
                          </div>
                        </div>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                  </form>
                </div>
              </div>
            </div>
            <!-- end of personal section -->
            <div class="tab-pane text-center gallery" id="positions">
              <!-- begin content positions section -->
              <div class="container">
                <div class="row">
                  <div
                    id="listing"
                    class="card card-profile ml-auto mr-auto"
                    style="max-heigth: 100px;max-width: 280px;"
                    v-bind:key="position.id"
                    v-for="position in userData.positions"
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
                      <a class="card-title" v-bind:href="`/positions/${position.id}`">{{ position.name }}</a>
                      <p class="card-text">{{ position.description.substr(0, 50) + "..." }}</p>
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
            <!-- end of positions section -->
            <div class="tab-pane text-center gallery" id="favourites">
              <!-- begin content favourites section -->
              <div class="container">
                <div class="row">
                  <div
                    id="listing"
                    class="card card-profile ml-auto mr-auto"
                    style="max-heigth: 100px;max-width: 280px;"
                    v-bind:key="favouritePosition.id"
                    v-for="favouritePosition in userData.favourites"
                    v-on:click="currentPosition === favouritePosition.position"
                  >
                    <div class="card-header card-header-image">
                      <div class="iframe-container embed-responsive embed-responsive-16by9">
                        <youtube
                          class="embed-responsive-item"
                          style="max-width: 280px;"
                          gesture="media"
                          allow="encrypted-media"
                          allowfullscreen
                          v-bind:video-id="getVideoId(favouritePosition.position.url)"
                          ref="youtube"
                          @playing="playing"
                        ></youtube>
                      </div>
                    </div>
                    <div class="card-body">
                      <a class="card-title" v-bind:href="`/positions/${favouritePosition.position.id}`">
                        {{ favouritePosition.position.name }}
                      </a>
                      <p class="card-text">{{ favouritePosition.position.description.substr(0, 50) + "..." }}</p>
                      <p class="card-category text-gray">{{ favouritePosition.position.type }}</p>

                      <div class="card-footer justify-content-center">
                        <div class="row">
                          <div class="col-12" v-bind:key="tag.id" v-for="tag in favouritePosition.position.tags">
                            <div class="bootstrap-tagsinput warning-badge col-1">
                              <span href="#" class="tag badge">#{{ tag.name }}</span>
                            </div>
                          </div>
                        </div>
                      </div>
                      <button
                        v-on:click="removeFromFavourites(favouritePosition)"
                        class="btn btn-primary btn-fab btn-fab-mini btn-round"
                      >
                        <i class="material-icons">remove_circle_outline</i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- end of favourites section -->
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.user-profile {
  padding: 10rem 3rem 0rem;
}
#top-profile {
  align-content: center;
  justify-content: center;
}
</style>

<script>
import axios from "axios";
import { getIdFromUrl } from "vue-youtube";

export default {
  data: function() {
    return {
      message: "My Profile",
      userData: {},
      errors: [],
      editMode: false,
      currentPosition: {},
      image: "",
      playerVars: {
        autoplay: 1,
      },
      photoInfo: "",
      selectedFile: null,
      cloudinary: {
        uploadPreset: `ud1eyem5`,
        cloudName: "biagemc",
      },
    };
  },
  created: function() {
    axios.get("/api/users/" + this.$parent.getUserId()).then(response => {
      console.log(response.data);
      this.userData = response.data;
    });
  },
  computed: {
    cloudinaryURL: function() {
      return "https://api.cloudinary.com/v1_1/biagemc/image/upload";
    },
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
      let params = {
        name: this.userData.name,
        email: this.userData.email,
        city: this.userData.city,
        gym: this.userData.gym,
        afiliation: this.userData.afiliation,
        belt: this.userData.belt,
        avatar: this.photoInfo.url,
      };
      axios.patch("/api/users/" + this.$parent.getUserId(), params).then(response => {
        this.editMode = false;
      });
    },
    removeFromFavourites: function(theId) {
      axios.delete(`api/favourites/${theId.favourite_id}`).then(response => {
        let index = this.userData.favourites.indexOf(theId);
        this.userData.favourites.splice(index, 1);
      });
    },
    onFileSelected: function(event) {
      console.log(event);
      console.log("FILE SELECTED");
      this.selectedFile = event.target.files[0];
    },
    onUpload: function(event) {
      const formData = new FormData();
      formData.append("file", this.selectedFile);
      formData.append("upload_preset", this.cloudinary.uploadPreset);

      console.log(formData);
      const instance = axios.create({
        baseURL: this.cloudinaryURL,
        headers: {
          common: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        },
      });
      instance.defaults.headers.common = {};
      instance.defaults.headers.common.accept = "application/x-www-form-urlencoded";
      instance
        .post(this.cloudinaryURL, formData, {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        })
        .then(response => {
          console.log(response.data);
          this.photoInfo = response.data;
        })
        .catch(e => {
          console.log(e);
        });
    },
  },
};
</script>
