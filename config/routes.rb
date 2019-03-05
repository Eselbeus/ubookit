Rails.application.routes.draw do
  resources :musicians, only: [:index, :show, :edit, :update]
  resources :venues, only: [:index, :show]
  resources :performances
  resources :locations, only: [:show]
  root 'static_pages#home'

  get '/signup/musicians' => 'musicians#new'
  post '/musicians' => 'musicians#create'

  get '/signup/venues' => 'venues#new'
  post '/venues' => 'venues#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/locations' => 'locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
