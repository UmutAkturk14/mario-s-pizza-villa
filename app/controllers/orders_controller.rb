class OrdersController < ApplicationController
  def finish_purchase
    order = Order.find(params[:id])
    authorize order
    order.status = :processed
    if order.save
      redirect_to menu_path, notice: "Your order has been successfully processed. Our chef's making your order! 🍕🍺"
    end
  end

  def update_order_status
    order = Order.find(params[:id])
    authorize order
    order.status = order_params[:status]
    if order.save
      redirect_to dashboard_path, notice: "Order was successfully processed"
    end
  end

  def order_params
    params.require(:order).permit(:status)
  end

end
