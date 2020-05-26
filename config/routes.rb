Rails.application.routes.draw do
  namespace :api do
    get "/positions" => "positions#index"
    post "/positions" => "positions#create"
    get "/positions/:id" => "positions#show"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/post/:id" => "post#show"

    get "/comments" => "comments#index"
    post "/comments" => "comments#create"
    get "/comments/:id" => "comments#show"
    patch "/comments/:id" => "comments#update"
    delete "/comments/:id" => "comments#destroy"

    post "/favourites" => "favourites#create"
    delete "/favourites/:id" => "favourites#destroy"

    # match "/api/positions", to: redirect("/"), via: :all
    # match "*path", to: "application#custom_action", via: :all
  end
end
