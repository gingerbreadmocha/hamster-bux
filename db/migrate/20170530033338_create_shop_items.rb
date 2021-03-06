class CreateShopItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_items do |t|
      t.string :name
      t.integer :price
      t.string :picture
      t.references :shop_category, foreign_key: true

      t.timestamps
    end
  end
end
