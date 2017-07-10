# == Schema Information
#
# Table name: coupons
#
#  id           :integer          not null, primary key
#  used         :boolean
#  user_id      :integer
#  shop_item_id :integer
#  code         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_coupons_on_shop_item_id  (shop_item_id)
#  index_coupons_on_user_id       (user_id)
#

require 'test_helper'

class CouponTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
