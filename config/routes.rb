Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :permission_roles
  resources :permissions
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
