class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :about, :services, :menu]

  def about
  end

  def contact
  end

  def home
  end

  def services
  end

  def dashboard
    # TODO: Add all the orders
    @orders = Order.all
    @items = Item.where(archived: false).order(:item_type)
    @item = Item.new
    @report_cards = {
      daily: {
        title: "Daily Orders",
        total_orders: 100,
        total_amount: 5000,
        comparison: "+10%",
      },
      weekly: {
        title: "Weekly Orders",
        total_orders: 100,
        total_amount: 5000,
        comparison: "+10%",
      },
      monthly: {
        title: "Monthly Orders",
        total_orders: 100,
        total_amount: 5000,
        comparison: "+10%",
      },
      quarterly: {
        title: "Quarterly Orders",
        total_orders: 100,
        total_amount: 5000,
        comparison: "+10%",
      }
    }
    authorize @orders
  end

  def menu
    begin
      @menu = Item.all
    rescue StandardError => e
      flash[:error] = "An error occurred while fetching the menu items: #{e.message}"
      @menu = [] # Set @menu to an empty array or handle the error as needed
    end
  end
end
