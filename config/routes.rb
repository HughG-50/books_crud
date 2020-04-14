Rails.application.routes.draw do
  
  get "/", to: "pages#home"
  get "/sayhi", to: "pages#sayhi"

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




end
