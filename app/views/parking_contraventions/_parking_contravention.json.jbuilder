json.extract! parking_contravention, :id, :issue_date, :ticket_number, :street, :violations_id ,:created_at, :updated_at
json.url parking_contravention_url(parking_contravention, format: :json)
