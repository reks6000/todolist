Rails.application.routes.draw do
  get 'projects/index'
 
  resources :todos
  resources :lols
  
  root 'projects#index'
end
