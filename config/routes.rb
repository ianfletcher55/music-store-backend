Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get '/categories' => 'categories#index'
    post '/categories' => 'categories#create'
    delete '/categories/:id' => 'categories#destroy'

    get "/carted_products" => "carted_products#index"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
