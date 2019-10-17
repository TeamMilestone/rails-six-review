Rails.application.routes.draw do    
  get 'dashboard/index'  
  
  scope :admin do
    extend AdminRoutes
  end
  extend DeviseRoutes

  resources :users

  get 'welcome/index'
  root 'welcome#index'
end
