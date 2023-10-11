class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :item_type
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
