class CreateCostUploads < ActiveRecord::Migration[6.1]
  def change
    create_table :cost_uploads do |t|
      t.integer :file_upload_id
      t.string :name
      t.string :category
      t.string :source
      t.integer :debit1
      t.integer :debit2
      t.integer :credit1
      t.integer :credit2
      t.integer :subtotal_debit1
      t.integer :subtotal_debit2
      t.integer :subtotal_credit1
      t.integer :subtotal_credit2
      t.integer :net_profit1
      t.integer :net_profit2
      t.integer :net_loss1
      t.integer :net_loss2
      t.string :period_start1
      t.string :period_start2
      t.string :period_end1
      t.string :period_end2
      t.boolean :active_status
      t.boolean :del_status
      t.integer :user_id

      t.timestamps
    end
  end
end
