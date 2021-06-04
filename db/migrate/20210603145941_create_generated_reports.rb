class CreateGeneratedReports < ActiveRecord::Migration[6.1]
  def change
    create_table :generated_reports do |t|
      t.string :cost_upload_id
      t.string :report_file_name
      t.text :report_file_path
      t.boolean :active_status
      t.boolean :del_status
      t.integer :user_id

      t.timestamps
    end
  end
end
