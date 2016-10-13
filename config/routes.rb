Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" } # для работы OmniAuth

  resources :articles
  resources :comments

  root 'users#index'
end
