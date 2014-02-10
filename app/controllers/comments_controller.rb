class CommentsController < ApplicationController
	def new
		@comment = Comment.new
		setup_comments	
	end

	def create
		@comment = Comment.new(comment_params)
		if @comment.save
			redirect_to new_comment_path
		else 
			setup_comments
			render 'new'
		end
	end

	private 
		def comment_params
			params.require(:comment).permit(:message)
		end

		def setup_comments
			@comments = Comment.find(:all)
		end
end
