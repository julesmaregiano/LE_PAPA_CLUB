class CreateBabies < ActiveRecord::Migration[5.1]
  def change
    create_table :babies do |t|
      t.string :name
      t.date :date_of_birth
      t.enum :weight
      t.enum :gender
      t.enum :height
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
