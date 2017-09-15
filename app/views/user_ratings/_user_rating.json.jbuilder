json.extract! user_rating, :id, :score, :comment, :created_at, :updated_at
json.url user_rating_url(user_rating, format: :json)
