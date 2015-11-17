class CitiesController < ApplicationController

  def index 
    @cities = City.all
    render :index
  end

  def new 
    # @user = User.find_by(id: session[:user_id])
    @city = City.new
    render :new
  end

  def create
    city_params = params.require(:city).permit(:name, :url, :description)
    @city = City.create(city_params)
    redirect_to city_path(@city)
  end

  def show
    @city = City.find(params[:id])
    @posts = @city.posts
  end


end

