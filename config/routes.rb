Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root to: "pages#home", as: "home"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/services", to: "pages#services"
end
