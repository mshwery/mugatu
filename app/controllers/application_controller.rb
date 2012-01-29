class ApplicationController < ActionController::Base
  include UrlHelper
  protect_from_forgery

  helper_method :current_user
        
  private
    def current_user
      @current_user = session[:user_id] ? User.find(session[:user_id]) : nil
      #@current_user = User.find(session[:user_id]) if session[:user_id]
    end
  
end