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
    order.total_price += order_item.item.price.to_d
    order.save!

    redirect_to menu_path
  end

  def create
    item = Item.new(item_params)
    authorize item
    respond_to do |format|
      if item.save
        format.html { redirect_to dashboard_path }
        format.json { render json: { item: item }, status: :created }
      else
        format.html { render :new }
        format.json { render json: { errors: item.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  def archive_item
    item = Item.find(params[:id])
    authorize item
    item.archive
  end

  private

  def item_params
    params.require(:item).permit(:title, :price, :description, :item_type, :image)
  end
end
