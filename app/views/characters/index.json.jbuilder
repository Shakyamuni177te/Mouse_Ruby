json.array!(@characters) do |character|
  json.extract! character, :id, :name, :char_name, :bio
  json.url character_url(character, format: :json)
end
