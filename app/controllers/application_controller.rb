class ApplicationController < ActionController::Base
  include UrlHelper
  protect_from_forgery

  helper_method :current_user

#  def not_found
#    # raise ActionController::RoutingError.new('Not Found')
#    rescue ActiveRecord::RecordNotFound
#      redirect_to root_url(:subdomain => false), :flash => { :error => "Not found." }
#  end
    
  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
end
