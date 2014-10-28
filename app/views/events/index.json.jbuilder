json.array!(@events) do |event|
  json.extract! event, :id, :name, :target, :type
  json.url event_url(event, format: :json)
end
