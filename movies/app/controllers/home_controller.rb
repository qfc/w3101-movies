class HomeController < ApplicationController
  # GET /Home
  # GET /Home.json
 def login_form
   @user = User.find_by_email(params[:email])
   if @user
     home[:user_id] = @user.id
     redirect_to @user
      # Sign the user in and redirect to the user's show page.
   else
      flash.now[:error] = 'Invalid email/password'
      render 'sessions#new'
   end
  end


  
end
