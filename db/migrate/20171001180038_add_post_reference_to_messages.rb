class AddPostReferenceToMessages < ActiveRecord::Migration[5.1]
  def change
    add_reference :messages, :post, foreign_key: true, index: true
  end
end
