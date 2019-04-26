Rails.application.routes.draw do

  get 'users/new'
  get 'welcome/index'
  
  get 'card_decks/:id/add',                     to: 'card_decks#add',       as: 'add_to_card_deck'
  post 'card_decks/:id/add/:card_id',           to: 'card_decks#add_card',  as: 'add_card_to_card_deck'
  
  get       '/login',                           to: 'sessions#new'
  post      '/login',                           to: 'sessions#create'
  delete    '/logout',                          to: 'sessions#destroy'

  resources :cards
  resources :users
  resources :card_decks
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
