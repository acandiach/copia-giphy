Rails.application.routes.draw do
  resources :labels
  resources :publications
  root "publications#index"
end
