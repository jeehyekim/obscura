module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    # use find_by instead of find because find blows up when it fails to find a user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to new_session_path
    end
  end

  def logout
    @current_user = session[:user_id] = nil
    redirect_to root_path
  end
end
