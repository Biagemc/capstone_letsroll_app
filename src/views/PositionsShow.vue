<template>
  <div class="positions-show">
    <div class="main main-raised" id="section-new">
      <div id="content" class="section">
        <div class="container">
          <div class="row">
            <div class="col-md-10 ml-auto mr-auto">
              <h2 class="title text-center">
                <span>{{ position.name }}</span>
              </h2>
              <div class="row justify-content-center">
                <div class="col-10 iframe-container embed-responsive embed-responsive-16by9">
                  <youtube
                    class="embed-responsive-item"
                    style="max-width: 800px;max-heigth:500px;"
                    gesture="media"
                    allow="encrypted-media"
                    allowfullscreen
                    :video-id="getVideoId(position.url)"
                    ref="youtube"
                    @playing="playing"
                  ></youtube>
                </div>
              </div>
              <div class="row justify-content-center">
                <div v-bind:key="tag.id" v-for="tag in position.tags">
                  <div class="col-xl-3">
                    <span class="badge badge-pill badge-warning">#{{ tag.name }}</span>
                  </div>
                </div>
              </div>
              <div class="pos-description">
                <h3 class="title">Description:</h3>
                <h5>{{ position.description }}</h5>
              </div>
              <div v-if="position.user_id === $parent.getUserId()" id="button-edit">
                <a v-bind:href="`/positions/${position.id}/edit`" class="btn btn-primary">Edit Info</a>
              </div>
            </div>
          </div>
          <!-- Comment section -->
          <div class="row">
            <div class="col-md-10 ml-auto mr-auto">
              <div id="comments">
                <!-- Comment Create -->
                <h3 class="text-center">
                  Post a comment
                  <br />
                </h3>
                <div class="media-body">
                  <form v-on:submit.prevent="submit()">
                    <span class="bmd-form-group">
                      <textarea
                        class="form-control"
                        placeholder="Write some nice stuff or nothing..."
                        rows="3"
                        spellcheck="false"
                        v-model="newCommentContent"
                      ></textarea>
                    </span>
                    <div class="media-footer">
                      <button
                        class="btn btn-primary btn-link float-right"
                        rel="tooltip"
                        data-original-title="add Comment"
                        type="submit"
                      >
                        <i class="material-icons">add_circle_outline</i>
                        Add Comment
                      </button>
                    </div>
                  </form>
                </div>
                <!-- end of comment create -->
                <div class="container comments-area">
                  <div class="title text-center">
                    <h3>{{ totalComments }}</h3>
                  </div>
                  <div class="media-area" v-bind:key="comment.id" v-for="comment in discussion">
                    <div class="media">
                      <a class="float-left" href="#">
                        <div class="avatar">
                          <img
                            class="media-object"
                            v-bind:src="comment.user_avatar"
                            alt="user-avatar"
                          />
                        </div>
                      </a>
                      <div class="media-body">
                        <h4 class="media-heading">
                          {{ comment.user_name }}
                          <small>· {{ comment.created_at }}</small>
                        </h4>
                        <p>{{ comment.content }}</p>
                        <div class="media-footer">
                          <a
                            v-if="comment.user_id === $parent.getUserId()"
                            href="#"
                            v-on:click="deleteComment(comment)"
                            class="btn btn-primary btn-link float-right"
                            rel="tooltip"
                            title
                            data-original-title="Reply to Comment"
                          >
                            <i class="material-icons">clear</i>
                            Delete
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End of comment section -->
        </div>
      </div>
    </div>
  </div>
</template>

<style>
h5 {
  padding-bottom: 4rem;
}

.comments-area {
  padding-top: 5rem;
}
.positions-show {
  align-content: center;
  padding: 10rem 3rem 0rem;
}

.name-title {
  padding-bottom: 4rem;
}
.pos-description {
  padding: 4rem 0rem 0rem;
  text-align: left;
}

#button-edit {
  align-content: left;
}

#content .container-fluid {
  padding: 12% 15% 5%;
}
</style>

<script>
import axios from "axios";
import { getIdFromUrl } from "vue-youtube";

export default {
  data: function() {
    return {
      message: "List of Positions",
      position: {},
      discussion: [],
      post: "",
      newCommentContent: "",
      totalComments: "",
      playerVars: {
        autoplay: 1,
      },
    };
  },
  created: function() {
    axios.get("/api/positions/" + this.$route.params.id).then(response => {
      console.log("Success", response.data);
      this.position = response.data.position;
      this.discussion = response.data.discussion;
      this.post = response.data.post;
      this.totalComments = this.discussion.length;
      if (this.totalComments > 0) {
        this.totalComments = this.discussion.length + " Comments";
      } else {
        this.totalComments = this.discussion.length + " Comment";
      }
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
      let params = {
        content: this.newCommentContent,
        user_id: this.$parent.getUserId(),
        post_id: this.post,
      };

      axios.post("/api/comments", params).then(response => {
        console.log("Adding this comment", response.data);
        this.discussion.push(response.data);
        this.newCommentContent = "";
      });
    },
    deleteComment: function(parameter) {
      console.log("Deleting position...");

      axios.delete(`api/comments/${parameter.id}`).then(response => {
        console.log(response.data);
        let index = this.discussion.indexOf(parameter);
        this.discussion.splice(index, 1);
      });
    },
  },
};
</script>
