Rails.application.routes.draw do
 
  
  devise_for :owners,
  controllers: { registrations: "owners/registrations", sessions: 'owners/sessions',passwords: 'owners/passwords' }
  resources :cleaning_requests
  

  # devise_for :house_keepers
  # devise_for :coordinators

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "cleaning_requests#index"

 # get 'cleaningrequests/home', to: "cleaningrequests#index"

end
