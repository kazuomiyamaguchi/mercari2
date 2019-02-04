Rails.application.routes.draw do
  devise_for :users
  root  'items#index'
  get 'items/sell' => 'items#sell'
  get 'items/buy' => "items#buy"
  get 'items/search' => "items#search"
  resources :items, only: [:index, :show, :new, :create]
  get 'user/identification' => 'users#identification'
  get 'user/prof' => 'users#prof'
  get 'user/mypage' => 'users#mypage'
  get 'user/payment' => 'users#payment'
  get 'user/credit' => 'users#credit'
  get 'user/logout' => "users#logout"
end
