Rails.application.routes.draw do
  get 'projects/index'
 
  resources :todos
  
  root 'projects#index'
end
