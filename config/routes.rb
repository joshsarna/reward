Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
