json.extract! generated_report, :id, :cost_upload_id, :report_file_name, :report_file_path, :active_status, :del_status, :user_id, :created_at, :updated_at
json.url generated_report_url(generated_report, format: :json)
