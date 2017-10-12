class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_attachment :photo
  def comments
    Comment.all.where(article: self)
  end

end

