class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :avatar
      t.string :ticket_link
      t.float :price
      t.text :description
      t.string :lineup
      t.date :date
      t.string :venue
      t.string :city 
      t.string :state

      t.timestamps
    end
  end
end
