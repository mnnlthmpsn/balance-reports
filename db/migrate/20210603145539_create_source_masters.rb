class CreateSourceMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :source_masters do |t|
      t.string :source_desc
      t.text :comment
      t.boolean :active_status
      t.boolean :del_status
      t.integer :user_id

      t.timestamps
    end
  end
end
