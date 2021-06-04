class AddDefaultToActiveAndDeleteStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :cost_uploads, :active_status, :boolean, default: true
    change_column :cost_uploads, :del_status, :boolean, default: false
  end
end
