json.extract! route, :id, :start_at, :ends_at, :travel_time, :total_stops, :action, :driver_id, :vehicle_id, :created_at, :updated_at
json.url route_url(route, format: :json)
