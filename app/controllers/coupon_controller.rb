class CouponController < ApplicationController
  def index
    @coupons = Coupon.where(user: current_user)
  end
end
