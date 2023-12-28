json.extract! user, :id, :index, :password, :is_student, :is_promoter, :is_admin, :created_at, :updated_at
json.url user_url(user, format: :json)
