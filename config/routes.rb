Rails.application.routes.draw do
  resources :messages
  root to: 'messages#index'
  get '/happyweek', to: 'happy_week#index'
end
