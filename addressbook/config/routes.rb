Rails.application.routes.draw do
  devise_for :users
  resources :addbooks
  root 'addbooks#index'

end
