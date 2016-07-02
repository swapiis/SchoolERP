json.array!(@placement_exams) do |placement_exam|
  json.extract! placement_exam, :id, :question_type_id, :timeperiod, :start_date, :end_date, :company_id
  json.url placement_exam_url(placement_exam, format: :json)
end
