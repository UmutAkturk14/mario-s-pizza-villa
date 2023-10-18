class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  after_commit :set_order_date_if_processed, on: :update

  enum status: { pending: "pending", processed: "processed", en_route: "en route", delivered: "delivered" }

  private

  def set_order_date_if_processed
    puts "Running set order date..."
    puts "Status: #{status}"
    puts "Order Date: #{order_date.nil?}"
    puts "Turns: #{status == 'processed' && order_date.nil?}"
    if status == 'processed' && order_date.nil?
      self.order_date = Time.now
      save
    end
  end
end
