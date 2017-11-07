class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all

  end

  def show
    @user = current_user
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.includes(posts: :user).find(params[:id])
    @posts = @chat_room.posts.order(created_at: :desc).paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.js { render 'shared/post_page' }
    end
  end

end
