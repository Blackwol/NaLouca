class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :title
      t.references :category, index: true, foreign_key: true
      t.string :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
