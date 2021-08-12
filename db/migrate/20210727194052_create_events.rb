class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :ticket_link
      t.text :description
      t.string :lineup
      t.string :date
      t.string :venue_name
      t.string :city 
      t.string :state

      t.timestamps
    end
  end
end
