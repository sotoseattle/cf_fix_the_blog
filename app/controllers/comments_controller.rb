class CommentsController < ApplicationController

  def index
    @pid = params[:post_id].to_i
    @comments = Post.find(@pid).comments.includes(:replies)
    render :partial => 'post_comments'
  end

  # def show
  #   @comment = Comment.find(params[:id])
  # end

  # def new
  #   @comment = Comment.new
  # end

  # def edit
  #   @comment = Comment.find(params[:id])
  # end

  # def create
  #   @comment = Comment.new(params[:comment])
  #   if @comment.save
  #     redirect_to @comment, notice: 'Comment was successfully created.'
  #   else
  #     render action: "new"
  #   end
  # end

  # def update
  #   @comment = Comment.find(params[:id])
  #   if @comment.update_attributes(params[:comment])
  #     redirect_to @comment, notice: 'Comment was successfully updated.'
  #   else
  #     render action: "edit"
  #   end
  # end

  # def destroy
  #   @comment = Comment.find(params[:id])
  #   @comment.destroy
  #   redirect_to comments_url
  # end
end
