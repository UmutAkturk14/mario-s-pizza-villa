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

  # Add item to cart
  post "items/:id/add_to_cart", to: "items#add_to_cart", as: "add_to_cart"

  # Order page
  resources :order_items, only: [:destroy]

end
