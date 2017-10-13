class Post < ApplicationRecord
  acts_as_votable
  validates :content, presence: true, allow_blank: false
  has_many :likes
  has_many :messages
  belongs_to :user
  belongs_to :chat_room
  has_attachment :photo

  def from?(some_user)
    user == some_user
  end

end
