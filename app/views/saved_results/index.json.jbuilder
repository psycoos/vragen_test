json.array!(@saved_results) do |saved_result|
  json.extract! saved_result, :id
  json.url saved_result_url(saved_result, format: :json)
end
