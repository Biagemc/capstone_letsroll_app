Rails.application.routes.draw do
  namespace :api do
    get "/positions" => "positions#index"
    get "/positions/:id" => "positions#show"
    post "/positions" => "positions#create"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/comments" => "comments#index"
    get "/comments/:id" => "comments#show"
    post "/comments" => "comments#create"
    patch "/comments" => "comments#update"
    delete "/comments" => "comments#destroy"
  end
end
