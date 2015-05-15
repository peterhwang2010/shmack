Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  get 'user/edit'

  get 'user/show'


end
