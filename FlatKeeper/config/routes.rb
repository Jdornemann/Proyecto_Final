Rails.application.routes.draw do
  devise_for :owner_property_users
  resources :flat_owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "flat_owners#index"
end
