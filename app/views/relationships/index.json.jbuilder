json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :name, :char_name, :vibes
  json.url relationship_url(relationship, format: :json)
end
