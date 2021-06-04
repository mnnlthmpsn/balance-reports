class AddDefaultToGeneratedReports < ActiveRecord::Migration[6.1]
  def change
    change_column :generated_reports, :active_status, :boolean, default: true
    change_column :generated_reports, :del_status, :boolean, default: false
  end
end
