module AdminRoutes
  def self.extended(router)
    router.instance_exec do
      resources :users
      get 'dashboard/index'
      root to: 'dashboard#index', as: 'admin_root'
    end
  end
end