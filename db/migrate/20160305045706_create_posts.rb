class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.string :image
      t.string :url

      t.timestamps null: false
    end
  end
end
