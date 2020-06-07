json.extract! booking, :id, :date, :status, :sport_id, :facility_id, :user_id, :timeslot_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
