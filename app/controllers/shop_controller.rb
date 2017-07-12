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

  def buy
    item = ShopItem.find_by id: params[:item_id]
    if current_user.hamsterbux < item.price
      return
    end
    new_transaction = Transaction.new({amount: item.price, description: "purchased #{item.name}", user: current_user, process_time: Time.now.strftime('%d/%m/%Y %HL%M')})
    current_user.hamsterbux -= new_transaction.amount
    unless new_transaction.save
      return
    end
    current_user.save

    value = (0...8).map { (65 + rand(26)).chr }.join
    new_coupon = Coupon.new({used: false, user: current_user, shop_item: item, code: value})
    new_coupon.save

    redirect_to :dash_index
  end


end
