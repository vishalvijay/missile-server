json.array!(@comments) do |comment|
  json.extract! comment, :id, :missile_id, :body, :created_at
end
