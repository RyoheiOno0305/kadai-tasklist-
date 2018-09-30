Rails.application.routes.draw do
  
  get 'microposts/create'

  get 'microposts/destroy'

  get 'toppages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete'logout' =>'sessions#destroy'
  
  get 'signup' => 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  resources :microposts, only: [:create, :destroy]

  resources :tasks
end
