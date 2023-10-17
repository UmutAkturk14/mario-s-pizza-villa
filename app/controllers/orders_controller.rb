class OrdersController < ApplicationController
  def finish_purchase
    order = Order.find(params[:id])
    authorize order
    order.status = :processed
    if order.save
      redirect_to menu_path, notice: "Order was successfully processed"
    end
  end
end
