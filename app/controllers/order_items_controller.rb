class OrderItemsController < ApplicationController
  def destroy
    order_item = OrderItem.find(params[:id])
    authorize order_item
    order_item.destroy
  end
end
