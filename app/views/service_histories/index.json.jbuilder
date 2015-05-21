json.array!(@service_histories) do |service_history|
  json.extract! service_history, :id, :user, :service, :charge, :feedback
  json.url service_history_url(service_history, format: :json)
end
