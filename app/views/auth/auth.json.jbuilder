json.Authorization "Bearer #{@token}"
json.user do |user|
  json.extract! user, :id, :email, :name
end