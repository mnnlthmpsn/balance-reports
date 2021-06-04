class CreateFileUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :file_uploads do |t|
      t.string :file_name
      t.string :file_path
      t.boolean :active_status
      t.boolean :del_status
      t.integer :user_id

      t.timestamps
    end
  end
end
