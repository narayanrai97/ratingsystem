json.extract! item, :id, :title, :description, :category, :genre, :singer, :record_label, :released_date, :duration, :rating, :casts, :direction, :author, :isbn, :created_at, :updated_at
json.url item_url(item, format: :json)
