class RemoveCategoryFromShopItem < ActiveRecord::Migration[5.1]
  def change
    remove_reference :shop_items, :category, foreign_key: true
    add_reference :shop_items, :shop_category, foreign_key: true
  end
end
