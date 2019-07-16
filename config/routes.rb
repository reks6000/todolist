Rails.application.routes.draw do
  get 'project/index'
 
  resources :todos
  
  root 'project#index'
end
