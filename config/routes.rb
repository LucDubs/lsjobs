Rails.application.routes.draw do
  devise_for :companies
  resources :aplicants
  resources :vacancies
  resources :companies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
