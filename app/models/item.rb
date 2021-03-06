class Item < ApplicationRecord
    belongs_to :user
    has_many   :user_ratings
    validates  :title, :description, :genre, :direction, presence: true

    has_attached_file :image, styles: { medium: "400x600#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
