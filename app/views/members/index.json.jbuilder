json.array!(@members) do |member|
  json.extract! member, :id, :isAdmin
  json.url member_url(member, format: :json)
end
