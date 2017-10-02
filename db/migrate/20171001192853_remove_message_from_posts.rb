class RemoveMessageFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :message_id, index: true, foreign_key: true
  end
end
