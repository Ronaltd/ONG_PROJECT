class OrdersController < ApplicationController
  before_action :find_order, only: %i[show destroy]
  before_action :authenticate_user!, only: %i[destroy index]

  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end
  
  def show
    @item = Item.new
  end

  def mailer
    @order = Order.find(params[:order_id])
    UserMailer.with(order: @order).order.deliver_now
    redirect_to contact_path
  end
  
  def destroy
    @order.destroy
    redirect_to dashboard_adm_path
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end
  
  def order_params
    params.require(:order).permit(:name, :email, :phone)
  end
  
end
