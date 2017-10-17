class Baby < ApplicationRecord
  belongs_to :user
  enum role: [:girl, :boy]
  has_attachment :photo

  def age
    jours = (Date.today - self.date_of_birth).to_i
  end
end
