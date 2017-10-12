class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.includes(messages: :user).find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @post.chat_room = @chat_room
    @post.user = current_user
    if @post.save
      respond_to do |format|
        format.html { redirect_to chat_room_path(@chat_room) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chat_rooms/show" }
        format.js
      end
    end
  end

  def like
    @post = Post.find(params[:id])
    @post.liked_by current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    redirect_to chat_room_path(@chat_room)
  end

  def unlike
    @post = Post.find(params[:id])
    @post.unliked_by current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    redirect_to chat_room_path(@chat_room)
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo)
  end
end
