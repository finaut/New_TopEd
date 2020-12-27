class OrdersController < ApplicationController
  def create
    @user_id = current_user.id
    @user = User.find(@user_id)
    @order = @user.orders.create set_params

    if @order.errors.any?
      $order_errors = @order.errors
    end
    redirect_to universities_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @order = @user.orders.find(params[:id])
    @order.destroy
    redirect_to edit_user_registration_path
  end
  private

  def set_params
    params.require(:order).permit(:first_name, :last_name, :mobile_number, :country, :faculty, :university, :user_id)
  end
end
