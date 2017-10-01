class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @post = Post.find(params[:post_id])
    @message.post = @post
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to post_path(@post) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "posts/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
