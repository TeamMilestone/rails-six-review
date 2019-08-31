Rails.application.routes.draw do  
  devise_for :users
  resources :users

  draw_routes :admin

  get 'welcome/index'
  root 'welcome#index'
end
