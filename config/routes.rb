Rails.application.routes.draw do
  
  get "/", to: "pages#home", as: "root"
  get "/sayhi", to: "pages#sayhi"

  get "/about", to: "pages#about", as: "about"

  post "/pokemon/:name", to: "pokemon#show"

  get "/redirectme", to: "pages#redirectme"
  get "/redirectedto", to: "pages#redirectedto" 

  get "/books", to: "books#index"
  # Read
  get "/books/:id", to: "books#show"
  # Create
  post "/books", to: "books#create"
  # Update
  put "/books", to: "books#update"
  patch "/books", to: "books#update"
  #Delete
  delete "/books", to: "books#destroy"

  # products View and ERB example
  get "/products", to: "products#index"

  


end
