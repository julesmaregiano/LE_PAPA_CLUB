class Baby < ApplicationRecord
  belongs_to :user

  enum role: [:girl, :boy]
end
