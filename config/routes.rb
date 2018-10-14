Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/gratitudes" => "gratitudes#index"
    post "/gratitudes" => "gratitudes#create"
    get "/gratitudes/:id" => "gratitudes#show"

    get "movement_reports" => "movement_reports#index"
    post "/movement_reports" => "movement_reports#create"

    get "nutrition_reports" => "nutrition_reports#index"
    post "/nutrition_reports" => "nutrition_reports#create"
    
    get "sleep_reports" => "sleep_reports#index"
    post "/sleep_reports" => "sleep_reports#create"
    
    get "stress_reports" => "stress_reports#index"
    post "/stress_reports" => "movement_reports#create"
  end
end
