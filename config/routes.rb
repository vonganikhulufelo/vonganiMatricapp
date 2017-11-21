Rails.application.routes.draw do
  get 'visitors/index'
  root 'visitors#index'
  get 'visitors/show'
  resources :visitors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
