Rails.application.routes.draw do
  resources :notations
  resources :criterions
  resources :offers
  resources :jobs
  resources :companies
  root to: 'companies#index'
end
