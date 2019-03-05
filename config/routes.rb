Rails.application.routes.draw do
  resources :musicians, only: [:index, :show, :edit, :update]

  get '/signup' => 'musicians#new'
  post '/musicians' => 'musicians#create'
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
