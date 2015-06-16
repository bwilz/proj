class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :destroy
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])

        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user

    else
      #create an error message.
      flash.now[:danger] = 'Invalid email/password combination' # flash.now persists until the first additional request
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
end
