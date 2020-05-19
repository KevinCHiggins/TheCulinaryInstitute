# @author Kevin Higgins
Rails.application.routes.draw do
  resources :course_modules
  resources :students

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
end
