json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :name, :char_name
  json.url inventory_url(inventory, format: :json)
end
