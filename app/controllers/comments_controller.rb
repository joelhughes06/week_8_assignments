class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(params.require(:comment).permit(:body))
# => the above line condenses the following two lines:
#		@comment = Comment.new(params.require(:comment).permit(:body))
#		@comment.post = @post
		@comment.creator = User.first #TODO fix after authentication

		if @comment.save
			flash[:notice] = 'Your comments was added.'
			redirect_to post_path(@post)
		else
			render 'posts/show'
		end

	end
end