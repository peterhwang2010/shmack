Rails.application.routes.draw do
  get 'user/index'
  root 'user#show'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  get 'user/edit'

  get 'user/show'


end
