class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :genre
      t.string :singer
      t.string :record_label
      t.date   :released_date
      t.string :duration
      t.string :rating
      t.string :casts
      t.string :direction
      t.string :author
      t.string :isbn

      t.timestamps
    end
  end
end
