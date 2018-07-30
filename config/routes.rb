Rails.application.routes.draw do

  devise_for :users
  root 'items#index'
  
  resources :items do  # tells you to go inside items
  	collection do      
  		get 'search'
  	end
  	resources :user_ratings, except: [:index, :show]
  end

  get '/items/:id/details' => 'items#details', as: :details
  get '/items/search' => 'items#search'

end

