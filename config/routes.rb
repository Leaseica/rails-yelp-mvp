Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'restaurants#index'
  # As a user, I can
  # * List all the restaurant 'restaurants#index'
  get '/restaurants', to: 'restaurants#index', as: :restaurants

  # * Add a new restaurant 'restaurants#new'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  # * Add a new review (nested)
  get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post '/restaurants/:restaurant_id/reviews', to: 'reviews#create'

  # # * Update my review (nested)
  # get '/restaurants/restaurant_id/reviews/:id/edit', to: 'reviews#edit', as: :edit_restaurant_review
  # patch '/restaurants/restaurant_id/reviews/:id', to: 'reviews#update'

  # # * Delete my review (nested)
  # delete '/restaurants/restaurant_id/reviews/:id', to: 'reviews#destroy'

  # * Visit the page of one restaurant 'restaurants#show'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

end
