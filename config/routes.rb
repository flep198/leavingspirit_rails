Rails.application.routes.draw do
  
  get 'charges/new'
  get 'charges/create'
  get 'transactions/new'
  get 'press', :to => 'press#index'
  get 'press/data_policy'
  get 'press/agb'
  get 'press/withdrawal'
  get 'press/delivery'
  get 'orders/summary'
  resources :orders
  resources :products
  resources :concerts
  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  end
  resources :transactions, only: [:new, :create]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'home/index'
  root 'home#index'
  resources :charges, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
