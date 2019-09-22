Rails.application.routes.draw do  
  get 'dashboard/index'
  devise_for :users
  resources :users
  
  scope :admin do
    extend AdminRoutes
  end
  
  get 'welcome/index'
  root 'welcome#index'
end
