Rails.application.routes.draw do
  resources :mining_types
  root to: 'welcome#index'

  get 'welcome', to: 'welcome#index'
  
  resources :coins
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
