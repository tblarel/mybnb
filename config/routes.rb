Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:index, :create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :spots, only: [:index, :show]  
    resources :reviews, only: [:index, :create]
    resources :locations, only: [:index, :show] do 
      resources :spots, only: [:index]
    end
    resources :bookings, only: [:index, :create,:destroy]
  end
  
  
  root "static_pages#root"

end
