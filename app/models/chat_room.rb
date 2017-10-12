class ChatRoom < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_attachment :photo
end
