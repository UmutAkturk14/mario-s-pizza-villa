class OrderItemsController < ApplicationController
  def destroy
    order_item = OrderItem.find(params[:id])
    order = order_item.order
    authorize order_item
    if order_item.quantity > 1
      order_item.quantity -= 1
      order.total_price -= order_item.item.price.to_d
      order.save!
      order_item.destroy
    else
      order.total_price -= order_item.item.price.to_d
      order.save!
      order_item.destroy
    end
  end
end
