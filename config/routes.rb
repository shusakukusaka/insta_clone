Rails.application.routes.draw do

  root 'static_pages#home'
  get '/pryvacy_policy', to: 'static_pages#pryvacy_policy'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    sessions: "users/sessions",
                                    passwords: "users/passwords",}
  get '/users/:id/following', to: 'users#following', as: :following_user
  get '/users/:id/followers', to: 'users#followers', as: :followers_user
  get '/users/index', to: 'users#index', as: :users
  get '/users/:id', to: 'users#show', as: :user
  
  resources :posts,  only: [:create, :destroy, :show]
  resources :relationships,       only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
  
  
  
end
