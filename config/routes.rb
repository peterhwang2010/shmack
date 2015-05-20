Rails.application.routes.draw do
  get 'welcome/index'
  get 'user/profile'
  root 'user#profile'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  get 'user/edit'
  post '/group/new', to: 'group#create'
  get 'group/profile', to: 'group#profile'

  get 'user/show'
  get 'user/index'
  resources :group


end
