Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :users, only: [:edit,:update,:destory]
  resources :rooms, only: [:new,:create]

end
