class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :confirmation_code, :admin)
    
    if user_params[:confirmation_code] == "123abc"
       user_params[:admin] = true
    end
    p user_params
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to @user # <-- go to show

  end
end
