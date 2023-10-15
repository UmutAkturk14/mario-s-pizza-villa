class Item < ApplicationRecord
  has_one_attached :image

  def archive
    update(archived: true)
  end

  validates :title, :item_type, :description, :price, presence: true
end
