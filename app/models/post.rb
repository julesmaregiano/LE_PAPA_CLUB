class Post < ApplicationRecord
  acts_as_votable
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_post
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :chat_room
  has_attachment :photo

  def from?(some_user)
    user == some_user
  end

  def broadcast_post
    ActionCable.server.broadcast("chat_room_#{chat_room.id}", {
      post_partial: ApplicationController.renderer.render(
        partial: "posts/post",
        locals: { post: self, user_is_posts_author: false }
      ),
      current_user_id: user.id
    })
  end

end
