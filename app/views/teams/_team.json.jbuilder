json.extract! team, :id, :teamname, :date, :schedulemin, :schedulemax, :sport, :people, :created_at, :updated_at
json.url team_url(team, format: :json)
