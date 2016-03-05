class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :profile_pic
      t.text :bio
      t.date :dob
      t.string :street
      t.string :suburb
      t.string :state
      t.string :city
      t.string :country
      t.string :gender
      t.string :phone

      t.timestamps null: false
    end
  end
end
