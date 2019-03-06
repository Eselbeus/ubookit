json.extract! booking, :id, :name, :start_time, :created_at, :updated_at
json.url booking_url(booking, format: :json)
