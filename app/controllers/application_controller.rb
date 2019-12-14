class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)    
    if resource.is_a? StaffUser
      locate = admin_root_path
    else
      locate = root_path
    end    
    stored_location_for(resource) || locate
  end
end
