Rails.application.routes.draw do
  devise_for :users
  resources :addbooks do
  	resources :contacts
  end
  root 'addbooks#index'

end
