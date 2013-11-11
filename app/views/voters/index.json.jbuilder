json.array!(@voters) do |voter|
  json.extract! voter, :session_id, :logon_time
  json.url voter_url(voter, format: :json)
end
