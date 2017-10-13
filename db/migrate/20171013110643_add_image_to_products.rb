class AddImageToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :image_small_url, :string
    add_column :products, :image_large_url, :string
    add_column :products, :subtitle, :string
  end
end
