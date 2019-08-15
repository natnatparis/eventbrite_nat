json.extract! user, :id, :encrypted_password, :description, :last_name, :fist_name, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
