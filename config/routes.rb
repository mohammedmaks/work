Rails.application.routes.draw do
  resources :players
  devise_for :users
  resources :coaches
  resources :mens_teams

  #for contact page
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  #root to the home page of the application
  root'home#home'
end
