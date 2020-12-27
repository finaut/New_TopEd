class OrdersController < ApplicationController

  def create
    @user_id = current_user.id
    @user = User.find(@user_id)
    @order = @user.orders.create set_params

    if @order.errors.any?
      $order_errors = @order.errors
    end

  end

  private

  def set_params
    params.require(:order).permit(:first_name, :last_name, :mobile_number, :country, :faculty, :university)
  end
end
