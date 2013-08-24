json.array!(@tasks) do |task|
  json.extract! task, :name, :due_date, :description, :flatmate_id, :completed
  json.url task_url(task, format: :json)
end
