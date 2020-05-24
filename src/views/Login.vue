<template>
  <div class="login">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">
          <form class="form" method action v-on:submit.prevent="submit()">
            <div class="card card-login card-hidden">
              <div class="card-header text-center">
                <h4 class="card-title">Login</h4>
              </div>
              <div class="card-body">
                <p class="card-description text-center" v-bind:key="error.id" v-for="error in errors">{{ error }}</p>
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
                    <input type="password" class="form-control" placeholder="Password..." v-model="password" />
                  </div>
                </span>
              </div>
              <div class="card-footer justify-content-center">
                <input value="Submit" type="submit" href="/positions" class="btn btn-warning btn-link" />
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<style>
.login {
  padding-top: 12rem;
}
</style>

<script>
import axios from "axios";

export default {
  data: function() {
    return {
      email: "",
      password: "",
      errors: [],
    };
  },
  methods: {
    submit: function() {
      var params = {
        email: this.email,
        password: this.password,
      };
      axios
        .post("/api/sessions", params)
        .then(response => {
          axios.defaults.headers.common["Authorization"] = "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          localStorage.setItem("name", response.data.name);
          localStorage.setItem("user_id", response.data.user_id);
          this.$router.push("/positions");
        })
        .catch(error => {
          this.errors = ["Invalid email or password."];
          this.email = "";
          this.password = "";
        });
    },
  },
};
</script>
