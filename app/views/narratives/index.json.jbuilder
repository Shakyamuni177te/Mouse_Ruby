json.array!(@narratives) do |narrative|
  json.extract! narrative, :id, :name, :char_name, :story_section
  json.url narrative_url(narrative, format: :json)
end
