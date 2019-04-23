Rails.application.routes.draw do

  get 'users/new'
  get 'welcome/index'
  
  get       '/login',                           to: 'sessions#new'
  post      '/login',                           to: 'sessions#create'
  delete    '/logout',                          to: 'sessions#destroy'

  resources :cards
  resources :users
  resources :card_decks
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
