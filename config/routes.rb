Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  get 'user/edit'
  post '/group/new', to: 'group#create'
  get 'group/profile', to: 'group#profile'

  get 'user/show'
  resources :group


end
