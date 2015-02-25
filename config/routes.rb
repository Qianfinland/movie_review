Rails.application.routes.draw do

  devise_for :users
  resources :movies do
    #nested views, use rake route
    resources :reviews, except: [:show, :index]
  end

  root 'movies#index'

end
