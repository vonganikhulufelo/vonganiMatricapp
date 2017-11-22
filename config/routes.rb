Rails.application.routes.draw do
  get 'users/index'

  get 'users/sign_up'

  get 'users/sign_in'

  get 'visitors/index'
  root 'users#sign_up'
  get 'visitors/show'
  resources :sessions, only: [:new, :create]
  resources :users, only: [:index, :create, :new]
   resources :visitors do 
  	collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
