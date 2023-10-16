Rails.application.routes.draw do
  get 'order_items/delete'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: "pages#home", as: "home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/services", to: "pages#services"
  get "/menu", to: "pages#menu"
  get "/dashboard", to: "pages#dashboard"

  # Add item to cart
  post "items/:id/add_to_cart", to: "items#add_to_cart", as: "add_to_cart"
  post "items/:id/archive_item", to: "items#archive_item", as: "archive_item"

  # Order page
  resources :order_items, only: [:destroy]
  resources :items, only: [:create, :update]
  get 'items/:id/edit_partial', to: 'items#edit_partial', as: 'edit_item'

end
