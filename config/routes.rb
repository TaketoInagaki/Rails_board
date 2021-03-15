Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: %i[new create]
  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
end
