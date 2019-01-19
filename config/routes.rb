Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    post '/runs' => 'runs#create'

    get '/earned_books' => 'earned_books#index'
    patch '/earned_books/:id' => 'earned_books#update'
  end
end
