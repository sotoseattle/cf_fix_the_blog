class RepliesController < ApplicationController
  def index
    # @replies = Reply.all
    # binding.pry
    @cid = params[:com_id].to_i
    @replies = Comment.find(@cid).replies
    render :partial => 'com_replies'
  end

  # def show
  #   @reply = Reply.find(params[:id])
  # end

  # def new
  #   @reply = Reply.new
  # end

  # def edit
  #   @reply = Reply.find(params[:id])
  # end

  # def create
  #   @reply = Reply.new(params[:reply])
  #   if @reply.save
  #     redirect_to @reply, notice: 'Reply was successfully created.'
  #   else
  #     render action: "new"
  #   end
  # end

  # def update
  #   @reply = Reply.find(params[:id])
  #   if @reply.update_attributes(params[:reply])
  #     redirect_to @reply, notice: 'Reply was successfully updated.'
  #   else
  #     render action: "edit"
  #   end
  # end

  # def destroy
  #   @reply = Reply.find(params[:id])
  #   @reply.destroy
  #   redirect_to replies_url
  # end
end
