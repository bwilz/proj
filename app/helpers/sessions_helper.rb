module SessionsHelper
  #logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end
  
  #returns the current logged-in user (if there is one)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  #returns if user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
end