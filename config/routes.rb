Rails.application.routes.draw do
  devise_for :users
  resources :items

  get '/' => 'application#home'
  # get '/' => 'items#index'


end
