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
############## Quesiton Route ###########################
  get "/questions", to: "questions#index", as: 'questions'
  get "/users/:user_id/questions/new", to: 'questions#new', as: "new_question"
  post "questions", to: 'questions#create'
  get "/users/:user_id/questions/:id", to: "questions#show", as: 'question'
  get "/questions/:id/edit", to: 'questions#edit', as: "edit_question"
  patch "/users/:user_id/questions/:id", to: "questions#update"
  delete "/users/:user_id/questions/:id", to: 'questions#destroy', as: "delete_question"
#################### ugly nested route #########################
  root 'users#home'
#################### Answer Route #############################
  get "questions/:id/answers/new", to: "answers#new", as: "new_answer"
  post 'answers', to: "answers#create"
  get 'answers/:id', to: "answers#show", as: "answer"
  get 'answers/:id/edit', to: "answers#edit", as: "edit_answer"
  patch 'answers/:id', to: "answers#update"
  delete 'answers/:id', to: "answers#destroy", as: "delete_answer"
#################### Answer Route #############################
  get "categories", to: "categories#index", as: "categories"
  get "categories/:id", to: "categories#show", as: "category"
  patch "categories/:id", to: "categories#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
