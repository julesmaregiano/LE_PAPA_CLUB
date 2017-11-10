class AddBrandToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :brand, :string
    add_column :products, :description2, :string
    add_column :products, :quantity, :string
  end
end
