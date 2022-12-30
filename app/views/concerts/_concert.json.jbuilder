json.extract! concert, :id, :date, :time, :fb_link, :coordinates, :location_name, :ticket_link, :location_link, :created_at, :updated_at
json.url concert_url(concert, format: :json)
