class CreateProductCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :product_categories do |t|
      t.integer :category_id
      t.integer :products_id

      t.timestamps
    end
  end
end
