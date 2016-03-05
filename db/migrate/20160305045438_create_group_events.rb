class CreateGroupEvents < ActiveRecord::Migration
  def change
    create_table :group_events do |t|
      t.references :group, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
