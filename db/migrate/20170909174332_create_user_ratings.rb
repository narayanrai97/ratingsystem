class CreateUserRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :user_ratings do |t|
      t.integer :score
      t.text    :comment

      t.timestamps
    end
  end
end
