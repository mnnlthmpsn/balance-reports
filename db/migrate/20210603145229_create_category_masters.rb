class CreateCategoryMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :category_masters do |t|
      t.string :cat_desc
      t.text :comment
      t.boolean :active_status
      t.boolean :del_status
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
