json.array!(@pps) do |pp|
  json.extract! pp, :id, :title
  json.url pp_url(pp, format: :json)
end
