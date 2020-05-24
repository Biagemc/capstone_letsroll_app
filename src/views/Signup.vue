<template>
  <div class="signup">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">
          <form class="form" method action v-on:submit.prevent="submit()">
            <ul>
              <li v-for="error in errors">{{ error }}</li>
            </ul>
            <div class="card card-login card-hidden">
              <div class="card-header text-center">
                <h4 class="card-title">Signup</h4>
              </div>
              <div class="card-body">
                <p
                  class="card-description text-center"
                  v-bind:key="error.id"
                  v-for="error in errors"
                >{{ error }}</p>
                <span class="bmd-form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">face</i>
                      </span>
                    </div>
                    <input type="text" class="form-control" placeholder="Name..." v-model="name" />
                  </div>
                </span>
                <span class="bmd-form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">email</i>
                      </span>
                    </div>
                    <input type="email" class="form-control" placeholder="Email..." v-model="email" />
                  </div>
                </span>
                <span class="bmd-form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input
                      type="password"
                      class="form-control"
                      placeholder="Password..."
                      v-model="password"
                    />
                  </div>
                </span>
                <span class="bmd-form-group">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="material-icons">lock_outline</i>
                      </span>
                    </div>
                    <input
                      type="password"
                      class="form-control"
                      placeholder="Password Confirmation..."
                      v-model="passwordConfirmation"
                    />
                  </div>
                </span>
              </div>
              <div class="card-footer justify-content-center">
                <input type="submit" class="btn btn-warning btn-link" value="Submit" />
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.signup {
  padding-top: 12rem;
}
</style>
<script>
import axios from "axios";

export default {
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: [],
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation,
      };
      axios
        .post("/api/users", params)
        .then(response => {
          this.$router.push("/login");
        })
        .catch(error => {
          console.log("update errors...", error.response);
          this.errors = error.response.data.errors;
        });
    },
  },
};
</script>
