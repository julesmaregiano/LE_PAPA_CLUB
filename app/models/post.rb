class Post < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def from?(some_user)
    user == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
      post_partial: ApplicationController.renderer.render(
        partial: "posts/post",
        locals: { post: self, user_is_posts_author: false }
      ),
      current_user_id: user.id
    })
  end

end
