json.extract! student, :id, :name, :email, :paid, :course_module_id, :created_at, :updated_at
json.url student_url(student, format: :json)
