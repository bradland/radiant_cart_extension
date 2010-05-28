class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.integer :cart_id
      t.integer :order_id
      t.integer :product_id
      t.string :name
      t.string :sku
      t.integer :price_in_cents
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
