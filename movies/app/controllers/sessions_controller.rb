class SessionsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  def new
      render 'new'
  end
  def create
   @user = User.find_by_email(params[:email])
   if @user
     session[:user_id] = @user.id
     redirect_to @user
      # Sign the user in and redirect to the user's show page.
   else
      flash.now[:error] = 'Invalid email/password'
      render 'new'
   end
  end
  
  def destroy
    session.delete(:email)
    flash[:notice] = 'Logged out successfully.'
    redirect_to login_path
  end
end
