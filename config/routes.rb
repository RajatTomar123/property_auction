Rails.application.routes.draw do
  route "properties#index"
  resources :properties

  route "users#index"
  resources :users
end
