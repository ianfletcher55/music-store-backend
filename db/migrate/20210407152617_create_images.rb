class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :url
      t.text :description
      t.boolean :primary

      t.timestamps
    end
  end
end
