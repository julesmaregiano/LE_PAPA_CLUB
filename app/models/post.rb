class Post < ApplicationRecord
  belongs_to :chat_room
  belongs_to :message
  belongs_to :user
end
