Rails.application.routes.draw do
  root 'currencies#index'
  get '/show', to: 'currencies#show'
  post '/show', to: 'currencies#show'
  resources :currencies
end
