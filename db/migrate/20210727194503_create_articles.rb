class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :link
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
