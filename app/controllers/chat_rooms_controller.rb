class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @user = current_user
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.includes(posts: :user).find(params[:id])
    @posts = @chat_room.posts.paginate(page: params[:page], per_page: 10).order(id: :desc)
    respond_to do |format|
      format.html
      format.js
    end
  end

end
