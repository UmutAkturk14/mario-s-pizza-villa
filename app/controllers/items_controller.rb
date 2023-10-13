class ItemsController < ApplicationController

  def add_to_cart
    # params = { id: 1 }
    # Item.find(1)
    item = Item.find(params[:id])
    authorize item
    # Create a new order
    # Order.create(user: current_user)
    order = Order.find_or_create_by(user: current_user, status: "pending")
    # Add the item to the order
    # OrderItem.create(order: order, item: item)
    order_item = OrderItem.find_or_create_by(order: order, item: item)
    order_item.quantity.nil? ? order_item.quantity = 1 : order_item.quantity += 1
    order_item.save!

    redirect_to menu_path
  end
end
