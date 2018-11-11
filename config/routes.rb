Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    get '/daily_score' => 'users#daily_score'

    post "/sessions" => "sessions#create"

    get "/gratitudes" => "gratitudes#index"
    post "/gratitudes" => "gratitudes#create"
    get "/gratitudes/:id" => "gratitudes#show"

    get "/movement_reports" => "movement_reports#index"
    post "/movement_reports" => "movement_reports#create"
    get "/movement_reports/:id" => "movement_reports#show"
    patch "/movement_reports/:id" => "movement_reports#update"
    delete "/movement_reports/:id" => "movement_reports#destroy"

    get "/nutrition_reports" => "nutrition_reports#index"
    post "/nutrition_reports" => "nutrition_reports#create"
    get "/nutrition_reports/:id" => "nutrition_reports#show"
    patch "/nutrition_reports/:id" => "nutrition_reports#update"
    delete "/nutrition_reports/:id" => "nutrition_reports#destroy"

    get "/sleep_reports" => "sleep_reports#index"
    post "/sleep_reports" => "sleep_reports#create"
    get "/sleep_reports/:id" => "sleep_reports#show"
    patch "/sleep_reports/:id" => "sleep_reports#update"
    delete "/sleep_reports/:id" => "sleep_reports#destroy"

    get "/stress_reports" => "stress_reports#index"
    post "/stress_reports" => "stress_reports#create"
    get "/stress_reports/:id" => "stress_reports#show"
    patch "/stress_reports/:id" => "stress_reports#update"
    delete "/stress_reports/:id" => "stress_reports#destroy"
  end
end
