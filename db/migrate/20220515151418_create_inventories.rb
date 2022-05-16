class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.integer :item_id
      t.integer :warehouse_id

      t.timestamps
    end
  end
end
