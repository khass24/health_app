Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/gratitudes" => "gratitudes#index"
    post "/gratitudes" => "gratitudes#create"
  end
end
