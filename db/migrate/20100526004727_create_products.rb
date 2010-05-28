class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.string :sku
      t.string :number
      t.string :keywords
      t.text :description
      t.text :related_products
      t.text :suggestions

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
