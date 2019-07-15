Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :todos
  
  root 'welcome#index'
end
