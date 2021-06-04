class AddDefaultToFileUploads < ActiveRecord::Migration[6.1]
  def change
    change_column :file_uploads, :file_path, :text
    change_column :file_uploads, :active_status, :boolean, default: true
    change_column :file_uploads, :del_status, :boolean, default: false
  end
end
