Rails.application.routes.draw do

  root 'static_pages#home'
  get '/pryvacy_policy', to: 'static_pages#pryvacy_policy'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  
  get '/users/:id', to: 'users#show', as: :user
  
end
