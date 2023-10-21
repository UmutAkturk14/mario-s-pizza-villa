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
    @items = Item.where(archived: false).order(:item_type)
    @item = Item.new
    # Define date ranges for daily, weekly, monthly, and quarterly orders
    today = Date.today
    @orders = Order.where(status: [:processed, :en_route])
    yesterday = Date.yesterday
    this_week = today.at_beginning_of_week..today.at_end_of_week
    last_week = (today - 1.week).at_beginning_of_week..(today - 1.week).at_end_of_week
    this_month = today.at_beginning_of_month..today.at_end_of_month
    last_month = (today - 1.month).at_beginning_of_month..(today - 1.month).at_end_of_month
    this_quarter = today.at_beginning_of_quarter..today.at_end_of_quarter
    last_quarter_start = today.beginning_of_quarter.prev_quarter
    last_quarter_end = today.end_of_quarter.prev_quarter

    # Retrieve orders based on date ranges
    daily_orders = Order.where(created_at: today.beginning_of_day..today.end_of_day)
    daily_orders_last = Order.where(created_at: yesterday.beginning_of_day..yesterday.end_of_day)
    weekly_orders = Order.where(created_at: this_week)
    weekly_orders_last = Order.where(created_at: last_week)
    monthly_orders = Order.where(created_at: this_month)
    monthly_orders_last = Order.where(created_at: last_month)
    quarterly_orders = Order.where(created_at: this_quarter)
    quarterly_orders_last = Order.where(created_at: last_quarter_start..last_quarter_end)

    # Calculate the total orders and total amounts
    total_orders = daily_orders.count
    total_amount = daily_orders.sum(:total_price)
    total_orders_last = daily_orders_last.count
    total_amount_last = daily_orders_last.sum(:total_price)

    @report_cards = {
      daily: {
        title: "Daily Orders",
        total_orders: total_orders,
        total_amount: total_amount,
        comparison: comparison(total_orders_last, total_orders),
      },
      weekly: {
        title: "Weekly Orders",
        total_orders: weekly_orders.count,
        total_amount: weekly_orders.sum(:total_price),
        comparison: comparison(weekly_orders_last.count, weekly_orders.count),
      },
      monthly: {
        title: "Monthly Orders",
        total_orders: monthly_orders.count,
        total_amount: monthly_orders.sum(:total_price),
        comparison: comparison(monthly_orders_last.count, monthly_orders.count),
      },
      quarterly: {
        title: "Quarterly Orders",
        total_orders: quarterly_orders.count,
        total_amount: quarterly_orders.sum(:total_price),
        comparison: comparison(quarterly_orders_last.count, quarterly_orders.count),
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

  def comparison(last_value, current_value)
    if last_value.zero?
      "+100%" # If there were no orders last period
    else
      difference = current_value - last_value
      percentage = (difference.to_f / last_value * 100).round
      if difference.positive?
        "+#{percentage}%"
      elsif difference.negative?
        "#{percentage}%"
      else
        "0%"
      end
    end
  end
end
