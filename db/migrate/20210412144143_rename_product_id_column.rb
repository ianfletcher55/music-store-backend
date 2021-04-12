class RenameProductIdColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :product_categories, :products_id, :product_id
  end
end
