class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        @comment.blog_post_id = params[:blog_post_id]
      
        if @comment.save
            redirect_to @comment.blog_post
        end
    end
      
    def comment_params
        params.require(:comment).permit(:body)
    end
      
end
