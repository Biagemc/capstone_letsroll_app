<template>
  <div class="positions-new">
    <div class="main main-raised" id="section-new">
      <div class="section">
        <div class="row">
          <div class="col-lg-8 ml-auto">
            <form v-on:submit.prevent="submit()">
              <h2 class="section-title">New Position</h2>
              <ul>
                <li class="text-danger" v-for="error in errors">{{ error }}</li>
              </ul>
              <div class="row">
                <div class="col-md-6">
                  <div class="row">
                    <div class="form-group col-md-10">
                      <label>Name:</label>
                      <input
                        type="text"
                        class="form-control"
                        placeholder="Position Title Name"
                        v-model="positionName"
                      />
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-10">
                      <label>Url:</label>
                      <input type="text" class="form-control" placeholder="Youtube link" v-model="positionUrl" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group label-floating bmd-form-group col-md-10">
                      <label class="form-control-label bmd-label-floating" for="exampleInputTextarea">
                        You can write your description here...
                      </label>
                      <textarea
                        class="form-control"
                        rows="5"
                        id="exampleInputTextarea"
                        spellcheck="false"
                        v-model="positionDescription"
                      ></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-10">
                      <label for="inputState">Select Type</label>

                      <select
                        role="tab"
                        id="inputState"
                        class="form-control mb-0"
                        data-style="btn btn-link"
                        v-model="positionSituation"
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
                  </div>
                </div>
                <div class="col-md-4">
                  <div v-for="tag in tags" class="form-check">
                    <label class="form-check-label">
                      <input
                        v-bind:value="tag.id"
                        v-model="tagsSelected"
                        class="form-check-input"
                        type="checkbox"
                        value
                        checked
                      />
                      {{ tag.name }}
                      <span class="form-check-sign">
                        <span class="check"></span>
                      </span>
                    </label>
                  </div>
                </div>
              </div>

              <button type="submit" class="btn btn-primary">Create</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.positions-new {
  align-content: center;
  padding: 10rem 3rem 0rem;
}
</style>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      positionName: "",
      positionUrl: "",
      positionDescription: "",
      positionSituation: "",
      errors: [],
      tags: [],
      tagsSelected: [],
    };
  },
  created: function() {
    axios.get("/api/positions").then(response => {
      console.log(response.data);

      this.tags = response.data.tags;
    });
  },
  methods: {
    submit: function() {
      let params = {
        name: this.positionName,
        url: this.positionUrl,
        description: this.positionDescription,
        situation: this.positionSituation,
        tag: this.tagsSelected,
        user_id: this.$parent.getUserId(),
      };
      axios
        .post("/api/positions", params)
        .then(response => {
          this.$router.push("/positions");
        })
        .cacth(error => {
          this.errors = error.response.data.errors;
        });
    },
    deletePosition: function() {
      console.log("Deleting position...");
      axios.delete(`api/position/${this.position.id}`).then(response => {
        console.log(response.data);
        this.$router.push("/positions");
      });
    },
  },
};
</script>
