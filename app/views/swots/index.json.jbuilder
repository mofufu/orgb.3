json.array!(@swots) do |swot|
  json.extract! swot, :id, :company_name, :strength, :weak, :opportunity, :threat
  json.url swot_url(swot, format: :json)
end
