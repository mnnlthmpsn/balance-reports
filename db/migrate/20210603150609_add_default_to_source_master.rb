class AddDefaultToSourceMaster < ActiveRecord::Migration[6.1]
  def change
    change_column :source_masters, :active_status, :boolean, default: true
    change_column :source_masters, :active_status, :boolean, default: false
  end
end
