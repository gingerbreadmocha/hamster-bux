# == Schema Information
#
# Table name: shop_items
#
#  id               :integer          not null, primary key
#  name             :string
#  price            :integer
#  picture          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  shop_category_id :integer
#
# Indexes
#
#  index_shop_items_on_shop_category_id  (shop_category_id)
#

require 'test_helper'

class ShopItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
