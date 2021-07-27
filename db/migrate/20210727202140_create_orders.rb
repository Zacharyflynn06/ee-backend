class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :timestamp
      t.string :shipping_info

      t.timestamps
    end
  end
end
