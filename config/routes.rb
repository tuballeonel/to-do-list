Rails.application.routes.draw do
  devise_for :users  
  
  root 'home#index'

  resources :users
  resources :lists
  get 'my-list/:id' => 'lists#my_list'
  resources :items
end
