Rails.application.routes.draw do
  resources :course_modules
  resources :students
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get '/signin' => 'sessions#new'
  #post '/signin' => 'sessions#create'
  #get 'signout' => 'sessions#destroy'
  #get '/signup' => 'users#new'
 # post 'signup' => 'users#create'
end
