module DeviseRoutes
  def self.extended(router)
    user_custom_option = { sessions: 'users/sessions', registrations: 'users/registrations' }
    user_options = { controllers: user_custom_option }
    user_options[:path] = 'users'
    
    staff_custom_option = { sessions: 'staff_users/sessions' }
    staff_options = { controllers: staff_custom_option }
    staff_options[:path] = 'staff_users'
    
    router.instance_exec do
      devise_for :users, user_options
      devise_for :staff_users, staff_options
    end
    
  end
end