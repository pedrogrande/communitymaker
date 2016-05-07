class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :subject
      t.text :body
      t.boolean :read, default: false

      t.timestamps null: false
    end
  end
end
