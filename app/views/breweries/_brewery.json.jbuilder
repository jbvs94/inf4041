json.extract! brewery, :id, :name, :description, :nb_of_beer, :created_at, :updated_at
json.url brewery_url(brewery, format: :json)