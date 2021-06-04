class AddDefaultToCategoryMaster < ActiveRecord::Migration[6.1]
  def change
    change_column :category_masters, :active_status, :boolean, default: true
    change_column :category_masters, :del_status, :boolean, default: false
  end
end
