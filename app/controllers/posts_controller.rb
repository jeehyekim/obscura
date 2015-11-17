class PostsController < ApplicationController

	def new 
		# @city = City.find_by(id: params[:id])
    @city = City.find(params[:city_id])
    @city_id = @city.id.to_i
		# @feature = Feature.find(params[:feature_id])
		@post = Post.new
    @features = Feature.all
  
		render :new
	end

	def create
    if session[:user_params] == true
    end

		@post = Post.create(post_params)
		@city = City.find(params[:city_id])
		@post.city_id = @city.id
		# @feature = Feature.find(params[:feature_id])
		# @post.feature_id = @feature.id
		@current_user = current_user
		@post.user_id = @current_user.id
    @post.save!
		redirect_to city_path(@city)
	end

   def show
    @city = City.find(params[:id])
    @posts = @city.posts
  end

  def edit
    @city = City.find(params[:city_id])
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.destroy!
    @city = City.find(params[:city_id])
    @post = Post.create(post_params)
    redirect_to city_path(@city)
  end

  def destroy
    @city = City.find(params[:city_id])
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to city_path(@city)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :imageUrl, :feature_id, :city_id)
  end

end
