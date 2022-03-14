Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  # I want my api to be example.com/api/v1/resource
  namespace :api do
    namespace :v1 do
      resources :locations
      resources :users
      resources :attends
      resources :events
      resources :celebrities
      resources :comments
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
