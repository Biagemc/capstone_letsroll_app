Rails.application.routes.draw do
  namespace :api do
    get "/positions" => "positions#index"
    get "/positions/:id" => "positions#show"
    post "/positions" => "positions#create"
    patch "/positions/:id" => "positions#update"
    delete "/positions/:id" => "positions#destroy"
  end
end
