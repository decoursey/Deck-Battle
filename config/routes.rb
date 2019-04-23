Rails.application.routes.draw do

  get 'users/new'
  get 'welcome/index'
  
  get '/card_decks/:id/add_card/:card_id',      to: 'card_decks#add_card'
  
  get       '/login',                           to: 'sessions#new'
  post      '/login',                           to: 'sessions#create'
  delete    '/logout',                          to: 'sessions#destroy'

  resources :cards
  resources :users
  resources :card_decks
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
