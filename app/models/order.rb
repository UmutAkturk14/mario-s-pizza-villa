class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  enum status: { pending: "pending", processed: "processed" }
end
