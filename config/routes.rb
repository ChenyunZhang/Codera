Rails.application.routes.draw do
  get 'session/new'
  resources :answers
  # resources :categories
  # resources :ques_lans
  # resources :questions
  # resources :users
  ############ User Route ###############################
  get 'signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
############## Quesiton Route ###########################
  get '/questions', to: 'questions#index', as: 'questions'
  get '/questions/new', to: 'questions#new', as: 'new_question'
  post '/questions', to: 'questions#create'
  get '/questions/:id', to: 'questions#show', as: 'question'
  get '/questions/:id/edit', to: 'questions#edit', as: 'edit_question'
  patch '/questions/:id', to: 'questions#update'
  delete 'questions/:id', to: 'questions#destroy'
################## login route#############################
  get 'login' => 'session#new', as: "login"
  post 'login' => 'session#create'
  delete 'logout' => 'session#destroy', as: "logout"
###########################################################
  root 'session#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
