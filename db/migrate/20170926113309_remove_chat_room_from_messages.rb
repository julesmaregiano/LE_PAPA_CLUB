class RemoveChatRoomFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_reference :messages, :chat_room, foreign_key: true
  end
end
