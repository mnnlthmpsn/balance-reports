json.extract! file_upload, :id, :file_name, :file_path, :active_status, :del_status, :user_id, :created_at, :updated_at
json.url file_upload_url(file_upload, format: :json)
