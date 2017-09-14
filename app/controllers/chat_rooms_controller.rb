class ChatRoomsController < ApplicationController
  def index
  end

  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end
end
