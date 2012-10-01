class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  def current_user
    if session[:user_id]
       User.find session[:user_id]
     end
  end
 private
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this page" 
      redirect_to register_path # Prevents the current action from running
    end
  end  
  def logged_in?
    !!current_user
  end
 
end
