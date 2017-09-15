class AddUserIdAndItemIdToUserRating < ActiveRecord::Migration[5.1]
  def change
    add_column :user_ratings, :user_id, :integer
    add_column :user_ratings, :item_id, :integer
  end
end
