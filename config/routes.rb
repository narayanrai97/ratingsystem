Rails.application.routes.draw do

  resources :user_ratings
  devise_for :users

  resources :items do  # tells you to go inside items
  	collection do      #
  		get 'search'
  	end
  	resources :user_ratings, except: [:show, :index]
  end

  get '/items/:id/details' => 'items#details', as: :details

  root 'items#index'


end

