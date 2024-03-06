# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
The objective of this challenge is to build a two-model Rails app with a restaurant and anonymous reviews.
We will discard the issue that a visitor can create a restaurant without being the owner or authenticated
...


As a user, I can
  # List all the restaurant 'restaurants#index'
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  * ControllerRestaurants
    def index
    end
  * views
    // index.html.erb
    <!-- app/views/restaurants/index.html.erb -->
      <h1>All restaurants</h1>
      ul<li
        each + name, category, address, average rating + link_to
      link_to back
    //

  # Add a new restaurant 'restaurants#new'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'

  * ControllerRestaurants
    def new
    def create
  * Views
    // show.html.erb
      button add a new restaurant
    //
    // new.html.erb
    <!-- app/views/restaurants/new.html.erb -->
      <h1>Add a new restaurant</h1>
      render form
      link_to back
    //
    // _form.html.erb
    <!-- app/views/restaurants/_form.html.erb -->
      * label + input name (mandatory)
      * label + input address (mandatory)
      * label + input category (mandatory)
      * label + input phone number (optional)
      * submit button
    //

  # Visit the page of one restaurant 'restaurants#show'
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  * ControllerRestaurants
    def show
  * Views
    // show.html.erb
    <!-- app/views/restaurants/show.html.erb -->
    <h1>restaurant.name</h1>
    restaurant.address
    restaurant.phone_number (with if msg si vide)
    restaurant average rating
    button add a review
    link_to back
    ul<li
      @restaurant.reviews
      review.rating
      review.content
      date posted
    //

  # Add a new review (nested)
  get '/restaurants/restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  post '/restaurants/restaurant_id/reviews', to: 'reviews#create'

  * ControllerReviews
    def new
    def create
  * Views
  // new.html.erb
  <!-- app/views/restaurants/restaurant_id/reviews/new.html.erb -->
    <h1>Add a review to restaurant.name</h1>
    render form
    link_to back
  //
  // _form.htmnl.erb
  <!-- app/views/restaurants/restaurant_id/reviews/_form.html.erb -->
    * label + radio (0..5) rating (mandatory)
    * label + input content (mandatory)
    * submit
  //


  # Update my review (nested)
  get '/restaurants/restaurant_id/reviews/:id/edit', to: 'reviews#edit', as: :edit_review
  patch '/restaurants/restaurant_id/reviews/:id', to: 'reviews#update'

  * ControllerReviews
    def edit
    def update
  * Views
  // edit.html.erb
  <!-- app/views/restaurants/restaurant_id/reviews/edit.html.erb -->
  //
  // show.html.erb
  <!-- app/views/restaurants/restaurant_id/reviews/show.html.erb -->
    add an edit button
  //

  # Delete my review (nested)
  delete '/restaurants/restaurant_id/reviews/:id', to: 'reviews#destroy'
  * ControllerReviews
    def destroy
  * views
  // show.html.erb
  <!-- app/views/restaurants/restaurant_id/reviews/show.html.erb -->
    Add a delete button
  //
