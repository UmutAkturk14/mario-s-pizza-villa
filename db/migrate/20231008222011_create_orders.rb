class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :order_date
      t.decimal :total_price, default: 0.0, null: false

      t.timestamps
    end
  end
end
