class CouponController < ApplicationController
def index
  @coupons = Coupon.where(user: current_user)
end

def redeem
  @redeem_coupon = Coupon.new
end

def redeem_coupon
  @redeem_coupon = Coupon.find_by(code: params[:coupon][:code])
  unless @redeem_coupon
    flash[:error] =  "Cannot find coupon."
    redirect_to :coupon_redemption
    return
  end
  if @redeem_coupon.used = true
    flash[:error] = "Coupon already used."
    redirect_to :coupon_redemption
    return
  end
  @redeem_coupon.used = true
  @redeem_coupon.save
  redirect_to :coupon_index
end
end
