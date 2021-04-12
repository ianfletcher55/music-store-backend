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

    post '/images' => 'images#create'
    patch '/images/:id' => 'images#update'
    delete '/images/:id' => 'images#destroy'

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    patch "/carted_products/:id" => "carted_products#update"
    delete "/carted_products/:id" => "carted_products#destroy"

    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"
    patch "/orders/:id" => "orders#update"
    delete "/orders/:id" => "orders#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
