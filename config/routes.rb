Rails.application.routes.draw do

  root 'static_pages#home'
  get '/pryvacy_policy', to: 'static_pages#pryvacy_policy'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                                    sessions: "users/sessions",
                                    passwords: "users/passwords",}
                              
  get '/users/index', to: 'users#index', as: :users
  get '/users/:id', to: 'users#show', as: :user
  
  
  
end
