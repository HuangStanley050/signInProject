# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'logins/home'
  get 'logins/secret'
  post 'logins/create', to: 'logins#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'logins#home'
end
