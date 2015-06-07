json.array!(@grids) do |grid|
  json.extract! grid, :id, :title, :description, :picture
  json.url grid_url(grid, format: :json)
end
