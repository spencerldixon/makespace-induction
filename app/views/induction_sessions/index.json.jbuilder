json.array!(@induction_sessions) do |induction_session|
  json.extract! induction_session, :id, :user, :date
  json.url induction_session_url(induction_session, format: :json)
end
