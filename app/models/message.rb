class Message < ApplicationRecord
  belongs_to :post
<<<<<<< HEAD
=======
  belongs_to :user
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def from?(some_user)
    user == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("post_#{post.id}", {
      message_partial: ApplicationController.renderer.render(partial: "messages/message", locals: { message: self, user_is_messages_author: false }),
      current_user_id: user.id
    })
  end

>>>>>>> 319d9723b6ce9bf69d320b1d1af8a931f799db8b
end
