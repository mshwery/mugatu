class ApplicationController < ActionController::Base
  protect_from_forgery
  force_ssl
        
  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_user
      unless current_user
        redirect_to login_url, :alert => "You must be logged in to access this page."
        return false
      end
    end

    def require_admin
      return current_user.admin
    end

  helper_method :current_user  
end