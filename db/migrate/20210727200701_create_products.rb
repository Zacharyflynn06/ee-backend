class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.string :size
      t.timestamps
    end
  end
end
