class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :ticket_link
      t.float :price
      t.string :description
      t.string :lineup
      t.date :date

      t.timestamps
    end
  end
end
