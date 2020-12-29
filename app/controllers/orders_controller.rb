class OrdersController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @order = @user.orders.create set_params
    @university = University.find_by(name: @order.university)

    flash[:order_errors] = Array.new

    if @order.errors.any?
      flash[:order_errors] << @order.errors
      redirect_to university_path @university
    end

    if @order.save
      flash[:notice] = 'Your application has been successfully processed'
      redirect_to universities_path
    end
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
