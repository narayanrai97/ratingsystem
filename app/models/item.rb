class Item < ApplicationRecord
    belongs_to :user
    has_many   :user_ratings

    has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def average_rating
        user_ratings = UserRating.where(item_id: id)
        sum = 0.0
        count = 0
        user_ratings.each do | user_rating|
            rating = user_rating.score
            count += 1
            sum = sum + rating
        end
        average = (sum/count).round(2)
    end
end
