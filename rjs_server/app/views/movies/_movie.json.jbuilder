json.extract! movie, :id, :studio_id, :title, :created_at, :updated_at
json.url movie_url(movie, format: :json)
