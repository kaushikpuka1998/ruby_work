json.extract! detail, :id, :first_name, :last_name, :email, :phone, :facebook, :created_at, :updated_at
json.url detail_url(detail, format: :json)
