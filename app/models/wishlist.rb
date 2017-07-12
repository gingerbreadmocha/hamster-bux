# == Schema Information
#
# Table name: wishlists
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  shop_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_wishlists_on_shop_item_id  (shop_item_id)
#  index_wishlists_on_user_id       (user_id)
#

class Wishlist < ApplicationRecord
  belongs_to :user
  belongs_to :shop_item
end
