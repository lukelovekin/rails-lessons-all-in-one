Rails.application.routes.draw do
  
#   get 'booklist/index'
devise_for :users
#get to home page with is books index

root "books#index"

get "/books", to: "books#index", as: "home"
get "/contact", to: "books#contact", as: "contact"
# post information on new information to database


get "/books/new", to: "books#new", as: "new_book"
post "/books", to: "books#create"

resources :orders, only: [:new]


get "/books/:id", to: "books#show", as: "show"

post "/books", to: "books#create", as: "create_book"

get "books/:id/edit", to: "books#edit", as: "edit_book"

#update existing resource
put "books/:id", to: "books#update"
patch "books/:id", to: "books#update"
delete "books/:id", to: "books#destroy"


end
