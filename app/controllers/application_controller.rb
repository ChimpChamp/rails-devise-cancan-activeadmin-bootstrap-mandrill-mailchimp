class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  #Custom route for devise, reroutes back to the homepage this is the root_path or root_url
  def after_sign_in_path_for(resource)
    #if current_user.sign_in_count == 1 && current_user.account.owner != current_user.id
    puts "888888888888888888888888888888888888888888888888"
    puts current_user.inspect
    if current_user.present?

    users_path
    else
      admin_root_path
    end
  end

  #Custom route for devise, after registration
  def after_sign_up_path_for(resource)
    users_path
  end

end
