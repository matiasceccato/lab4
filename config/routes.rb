Rails.application.routes.draw do
  resources :monsters, only: [:index, :show, :destroy]

  resources :tweets

  root "tweets#index"
end
