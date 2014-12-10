class BlogController < ApplicationController
	def show
		@blog_posts = Post.all.order("created_at DESC")
	end
	def new
	end
	def create
		#Blog Logic
		@post_to_save = Post.new(post_params)
		@post_to_save.save

		redirect_to "/blog/show"
	end
	def post_params
		params.require(:post).permit(:title, :content)
	end
end