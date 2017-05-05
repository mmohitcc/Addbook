Rails.application.routes.draw do
  resources :addbooks
  root 'addbooks#index'

end
