class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.references :type, foreign_key: true
      t.references :size, foreign_key: true
      t.string :link
      t.integer :price

      t.timestamps
    end
  end
end
