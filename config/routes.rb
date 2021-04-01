Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit,:update,:destory]
  resources :rooms, only: [:new,:create,:destory] do
    resources :messages, only: [:index,:create,]
  end
end
