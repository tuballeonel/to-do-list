Rails.application.routes.draw do
  devise_for :users  
  
  root 'home#index'

  resources :users
  resources :lists
  get 'my-list/:id'            => 'lists#my_list'
  get 'my-list/:id/:list/edit' => 'lists#my_list'
  resources :items
  resources :categories
end
