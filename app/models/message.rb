class Message < ApplicationRecord
  acts_as_votable
  validates :content, presence: true, allow_blank: false
  has_many :likes
  belongs_to :post
  belongs_to :user

  def from?(some_user)
    user == some_user
  end

end
