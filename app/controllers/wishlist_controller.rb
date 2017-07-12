class WishlistController < ApplicationController
  def index
    @wishtems = Wishlist.where(user: current_user)
  end

  def create
    new_wishlist_item = Wishlist.new({user: current_user, shop_item_id: params[:item_id]})
    new_wishlist_item.save
  end

  def destroy
    item = Wishlist.find params[:id]
    item.destroy
    redirect_to :wishlist_index
  end
end
