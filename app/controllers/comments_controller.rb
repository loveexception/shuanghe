class CommentsController < ApplicationController

  # POST /comments
  # POST /comments.json
  def create
    
    @post =Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    
    redirect_to @post if @comment.save 
  end

 
end
