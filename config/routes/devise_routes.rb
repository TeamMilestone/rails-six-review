module DeviseRoutes
  def self.extended(router)
    user_options = { controllers: { sessions: 'users/sessions' } }
    user_options[:path] = 'users'
    
    staff_options = { controllers: { sessions: 'staff_users/sessions' } }
    staff_options[:path] = 'staff_users'
    
    router.instance_exec do
      devise_for :users, user_options
      devise_for :staff_users, staff_options
    end
    
  end
end