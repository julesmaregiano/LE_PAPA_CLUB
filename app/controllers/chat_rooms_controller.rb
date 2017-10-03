class ChatRoomsController < ApplicationController

  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_rooms = ChatRoom.all
    @chat_room = ChatRoom.includes(posts: :user).find(params[:id])
    @posts = @chat_room.posts.last(20)
  end

end
