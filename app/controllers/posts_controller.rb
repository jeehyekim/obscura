class PostsController < ApplicationController

	def new 
		@city = City.find(params[:id])
		# @feature = Feature.find(params[:feature_id])
		@post = Post.new
		render :new
	end

	def create
    if user_params[:admin] = true
    end

		@post = Post.create(params.require(:post).permit(:title, :content, :imageUrl))
		@city = City.find(params[:id])
		@post.city_id = @city.id
		# @feature = Feature.find(params[:feature_id])
		@post.feature_id = @feature.id
		@current_user = current_user
		@post.user_id = @current_user.id
    @post.save
		redirect_to post_path
	end

   def show
    @city = City.find(params[:id])
    @posts = @city.posts
  end

end
