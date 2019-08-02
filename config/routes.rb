Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      post '/login', to: 'login#login'

      resources :users, only: [:create, :show, :update] do
        resources :services, only: [:create]
        resources :bookings, only: [:index]
      end

      resources :services, only: [:index, :show, :update, :destroy] do
        collection do
          get 'search'
        end
        resources :available_services, only: [:create]
        post 'items', to: "services#add_item"
      end

      resources :available_services, only: [:destroy] do
        resources :bookings, only: [:create]
      end

      resources :bookings, only: [:destroy]

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
