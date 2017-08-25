Rails.application.routes.draw do

  devise_for :user

  resources :movies do
  	resources :reviews, except: [:show,]
  end

  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
