class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.references :group_category, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :logo
      t.string :banner
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
