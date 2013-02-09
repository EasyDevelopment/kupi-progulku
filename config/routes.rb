KupiProgulku::Application.routes.draw do

  root to: 'pages#main'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'sign_out', to: 'sessions#destroy', as: 'sign_out'

  resources :users
  resources :profiles

  resources :lots do
    resources :bets
  end

  match 'men' => 'pages#men', as: :men
  match 'women' => 'pages#women', as: :women
end
