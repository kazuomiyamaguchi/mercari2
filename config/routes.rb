Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  get 'items/buy' => "items#buy"
  resources :items, only: [:index, :show, :new, :create]
  resources :users, only: [:show, :edit]
  get 'user/prof' => 'users#prof'
  get 'user/mypage' => 'users#mypage'
  get 'user/payment' => 'users#payment'
  get 'user/credit' => 'users#credit'
  get 'user/logout' => "users#logout"

end
