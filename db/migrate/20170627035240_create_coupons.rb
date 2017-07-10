class CreateCoupons < ActiveRecord::Migration[5.1]
  def change
    create_table :coupons do |t|
      t.boolean :used
      t.references :user, foreign_key: true
      t.references :shop_item, foreign_key: true
      t.string :code

      t.timestamps
    end
  end
  def down
    drop_table :coupons
  end
end
