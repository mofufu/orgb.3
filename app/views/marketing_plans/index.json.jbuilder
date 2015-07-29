json.array!(@marketing_plans) do |marketing_plan|
  json.extract! marketing_plan, :id, :buyer_profile_id, :title
  json.url marketing_plan_url(marketing_plan, format: :json)
end
