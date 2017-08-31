Rails.application.routes.draw do
  devise_for :users
  resources :items
  root 'items#home'
  get '/items' => 'application#index'

end
