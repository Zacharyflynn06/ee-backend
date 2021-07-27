class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
