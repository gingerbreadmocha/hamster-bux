class ShopController < ApplicationController
  def index
    @categories = ShopCategory.all
  end

  def category
    @category = ShopCategory.find_by name: params[:name]
    #@items = ShopItem.find_by shop_category_id:@category.id #(shop_catergory_id:@category.id)
    @items = ShopItem.where(shop_category_id: @category.id)
    render 'shop/category'
  end
end
