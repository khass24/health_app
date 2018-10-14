Rails.application.routes.draw do
  namespace :api do
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/gratitudes" => "gratitudes#index"
    post "/gratitudes" => "gratitudes#create"

    post "/movement_reports" => "movement_reports#create"

    post "/nutrition_reports" => "nutrition_reports#create"

    post "/sleep_reports" => "sleep_reports#create"
    
    post "/stress_reports" => "movement_reports#create"
  end
end
