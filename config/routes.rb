Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admins
  devise_for :users
  resources :friends
  #get 'home/index'
  root 'home#index'
  get 'home/about'
end
