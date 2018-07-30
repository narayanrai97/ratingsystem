class AddTitleToUserRatings < ActiveRecord::Migration[5.1]
  def change
    add_column :user_ratings, :title, :string
  end
end
