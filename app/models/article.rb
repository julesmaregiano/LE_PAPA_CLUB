class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attachment :photo
  self.per_page = 5
  def comments
    Comment.all.where(article: self)
  end

end

