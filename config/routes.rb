Rails.application.routes.draw do
  devise_for :user
  resources :labels
  resources :publications
  get '/users', to: 'users#home'
  get '/users/:user_id/publications', to: 'publications#index', as: :user_publications
  root to: "publications#index"
end
