class PostsController < ApplicationController

	def new 
		@city = City.find(params[:city_id])
		@feature = Feature.find(params[:feature_id])
		@post = Post.new
		render :new
	end

	def create
		@post = Post.create(params.require(:post).permit(:title, :content, :imageUrl)
		@city = City.find(params[:city_id])
		@posts.city_id = @city.id
		@feature = Feature.find(params[:feature_id])
		@posts.feature_id = @feature.id
		@posts.user_id = @user.id
		@current_user = current_user
		@post.user_id = @current_user.id
		redirect_to @city
	end
end
