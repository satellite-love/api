json.array!(@users) do |user|
  json.TwitterID user.twitter_id
  json.task user.tasks.first.content
end
