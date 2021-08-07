class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :order_time
      t.string :carrier
      t.string :tracking_number
      t.boolean :fulfilled
      t.float :total

      t.timestamps
    end
  end
end
