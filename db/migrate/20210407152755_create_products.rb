class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.integer :year
      t.string :model
      t.string :scale
      t.decimal :price, precision: 10, scale: 2
      t.string :new_used
      t.text :description
      t.string :category
      t.integer :stock
      t.integer :weight
      t.string :strings

      t.timestamps
    end
  end
end
