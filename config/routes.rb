Rails.application.routes.draw do
  resources :players
  resources :coaches
  resources :mens_teams
  #resources: articles
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'

  root'home#home'
end
