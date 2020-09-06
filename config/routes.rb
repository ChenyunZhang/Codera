Rails.application.routes.draw do
  ############ User Route ###############################
  get 'signup', to: 'users#new', as: 'signup'
  get 'login' => 'users#login', as: "login"
  post 'login' => 'users#handle_login'
  delete 'logout' => 'users#logout', as: "logout"
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'
############## Quesiton Route ###########################
  get "/users/:user_id/questions", to: "questions#index", as: 'questions'
  get "/users/:user_id/questions/new", to: 'questions#new', as: "new_question"
  post "/users/:user_id/questions", to: 'questions#create'
  get "/users/:user_id/questions/:id", to: "questions#show", as: 'question'
  get "/questions/:id/edit", to: 'questions#edit', as: "edit_question"
  patch "/users/:user_id/questions/:id", to: "questions#update"
  delete "/users/:user_id/questions/:id", to: 'questions#destroy', as: "delete_question"
#################### ugly nested route #########################
  root 'users#login'

  # get '/questions', to: 'questions#index', as: 'questions'
  # get '/questions/new', to: 'questions#new', as: 'new_question'
  # post '/questions', to: 'questions#create'
  # get '/questions/:id', to: 'questions#show', as: 'question'
  # get '/questions/:id/edit', to: 'questions#edit', as: 'edit_question'
  # patch '/questions/:id', to: 'questions#update'
  # delete 'questions/:id', to: 'questions#destroy'
################## login route#############################
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
