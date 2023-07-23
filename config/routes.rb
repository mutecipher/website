Rails.application.routes.draw do
  mount Lookbook::Engine, at: "/lookbook" if Rails.env.development?

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up", to: "rails/health#show", as: :rails_health_check
  resources :posts, only: %i[index show]

  root "about#index"
end
