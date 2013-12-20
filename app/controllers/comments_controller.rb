class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to new_comment_path
		end
	end

	private 
		def comment_params
			params.require(:comment).permit(:messagetext)
		end


end