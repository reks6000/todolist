Rails.application.routes.draw do
  get 'projects/index'
 
  resources :todos
  resolve('todo') { [:todo] }
  
  root 'projects#index'
end
