class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :street
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country

      t.timestamps null: false
    end
  end
end
