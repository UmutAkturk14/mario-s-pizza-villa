class Item < ApplicationRecord
  has_one_attached :image

  def archive
    update(archived: true)
  end
end
