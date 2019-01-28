Rails.application.routes.draw do
  devise_for :users

  root  'items#index'
  resources :items, only: [:index, :new, :create]
  get 'items/sell' => 'items#sell'

  resources :users,only: [:show, :edit]
  get 'user/prof' => 'users#prof'
  get 'user/mypage' => 'users#mypage'

  resources :users, only: [:show, :edit]
  get 'user/logout' => 'users#logout'

end
