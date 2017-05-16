Rails.application.routes.draw do


  devise_for :user
  root 'movies#index'

  resources :movies do
    resources :comments
  end

  resources :comments

end
