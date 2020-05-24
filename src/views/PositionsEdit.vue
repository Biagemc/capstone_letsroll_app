<template>
  <div class="positions-edit">
    <div class="main main-raised" id="section-edit">
      <div class="section">
        <div class="row">
          <div class="col-lg-10 ml-auto">
            <form v-on:submit.prevent="submit()">
              <h1>Edit Position</h1>
              <ul>
                <li class="text-danger" v-for="error in errors">{{ error }}</li>
              </ul>
              <div class="row">
                <div class="col-md-6">
                  <div class="row">
                    <div class="form-group col-md-9">
                      <label>Name:</label>
                      <input type="text" class="form-control" v-model="position.name" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-9">
                      <label>Url:</label>
                      <input type="text" class="form-control" v-model="position.url" />
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-9">
                      <label>Description:</label>
                      <textarea type="text" class="form-control" rows="5" v-model="position.description"></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-9">
                      <label for="inputState">Type:</label>

                      <select
                        role="tab"
                        id="inputState"
                        class="form-control selectpicker  col-md-6 mb-0"
                        data-style="select-with-transition"
                        v-model="position.type"
                        title="Position Type"
                      >
                        <option>{{ position.type }}</option>
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
              <button id="btn-save" type="submit" class="btn btn-primary">Save</button>
            </form>

            <div class="button">
              <a id="btn-delete" v-on:click="deletePosition()" class="btn btn-danger">Delete Position</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.positions-edit {
  align-content: center;
  padding: 10rem 3rem 0rem;
}

#btn-save,
#btn-delete {
  width: 8rem;
  padding: 1rem;
}
</style>

<script>
import axios from "axios";
export default {
  data: function() {
    return {
      position: {},
      errors: [],
      tagsSelected: [],
      tags: [],
    };
  },
  created: function() {
    axios.get(`/api/positions/${this.$route.params.id}`).then(response => {
      this.position = response.data.position;
      console.log(response.data.position);
      this.tags = response.data.tags;
    });
  },
  methods: {
    submit: function() {
      let params = {
        name: this.position.name,
        url: this.position.url,
        description: this.position.description,
        situation: this.position.type,
        tag: this.tagsSelected,
      };
      axios
        .patch(`/api/positions/${this.position.id}`, params)
        .then(response => {
          this.$router.push(`/positions/${this.position.id}`);
        })
        .cacth(error => {
          this.errors = error.response.data.errors;
        });
    },
    deletePosition: function() {
      console.log("Deleting position...");
      axios.delete(`api/positions/${this.position.id}`).then(response => {
        console.log(response.data);
        this.$router.push("/positions");
      });
    },
  },
};
</script>
