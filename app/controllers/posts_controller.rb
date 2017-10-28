class PostsController < ApplicationController

  def index
    @posts = Post.all
    @user = current_user
  end

  def show
    @user = current_user
    @post = Post.includes(messages: :user).find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @post.chat_room = @chat_room
    @post.user = current_user
    if @post.save
      ActionCable.server.broadcast("chat_room_#{@chat_room.id}", {
        post_partial: ApplicationController.renderer.render(
          partial: "posts/post",
          locals: {
            post: @post,
            user_is_posts_author: false,
            current_user: current_user
          }
        ),
        current_user_id: current_user.id
      })
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
    @user = current_user
    @post = Post.find(params[:id])
    @post.liked_by current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    respond_to do |format|
      format.html { redirect_to chat_room_path(@chat_room) }
      format.js
    end
  end

  def unlike
    @user = current_user
    @post = Post.find(params[:id])
    @post.unliked_by current_user
    @chat_room = ChatRoom.find(params[:chat_room_id])
    respond_to do |format|
      format.html { redirect_to chat_room_path(@chat_room) }
      format.js
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :photo)
  end
end
