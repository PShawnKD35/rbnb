Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post '/login', to: 'login#login'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:create, :show, :update] do
        resources :services, only: [:index, :show, :create, :update, :destroy] do
          resources :available_services, only: [:show, :create, :destroy] do
            resources :bookings, only: [:create, :destroy]
          end
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
