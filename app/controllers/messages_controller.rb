class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @post = Post.find(params[:post_id])
    @message.post = @post
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast("post_#{@post.id}", {
        message_partial: ApplicationController.renderer.render(
          partial: "messages/message",
          locals: {
            message: @message,
            user_is_messages_author: false
            current_user: current_user
          }
        ),
        current_user_id: user.id
      })
      respond_to do |format|
        format.html { redirect_to chat_room_post_path(@post) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "posts/show" }
        format.js
      end
    end
  end

  def like
    @message = Message.find(params[:id])
    @message.liked_by current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @post = Post.find(params[:post_id])
    redirect_to chat_room_post_path(@post)
  end

  def unlike
    @message = Message.find(params[:id])
    @message.downvote_from current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @post = Post.find(params[:post_id])
    redirect_to chat_room_post_path(@post)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
