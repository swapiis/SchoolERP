json.array!(@qusetions) do |qusetion|
  json.extract! qusetion, :id, :question, :question_type_id, :question_count
  json.url qusetion_url(qusetion, format: :json)
end
