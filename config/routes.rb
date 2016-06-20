Rails.application.routes.draw do

  root 'welcome#index'
  get '/index', to: 'welcome#index'
  resources :forms, only: [:new, :create]

end
