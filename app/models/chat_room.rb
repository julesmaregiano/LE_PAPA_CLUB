class ChatRoom < ApplicationRecord
  has_many :posts, dependent: :destroy
end
