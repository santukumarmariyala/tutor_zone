json.extract! subject, :id, :name, :description, :stream_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)
