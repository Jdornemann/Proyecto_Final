Rails.application.routes.draw do
 
  
  # get 'flat_details/index'
  # get 'flat_details/show'
  # get 'flat_details/edit'
  # get 'flat_details/new'
  devise_for :owners,
  controllers: { registrations: "owners/registrations",sessions: 'owners/sessions',passwords: 'owners/passwords',:omniauth_callbacks => "owners/omniauth_callbacks" }

  resources :cleaning_requests
  resources :flat_details

  devise_for :house_keepers,
  controllers: { registrations: "house_keepers/registrations", sessions: 'house_keepers/sessions',passwords: 'house_keepers/passwords' }
  # devise_for :house_keepers
  # devise_for :coordinators

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: "cleaning_requests#index"

 # get 'cleaningrequests/home', to: "cleaningrequests#index"

end
