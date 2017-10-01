class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def comments
    Comment.all.where(article: self)
  end

end

