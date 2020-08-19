Rails.application.routes.draw do
  root 'static_pages#home'

  get '/pryvacy_policy', to: 'static_pages#pryvacy_policy'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
