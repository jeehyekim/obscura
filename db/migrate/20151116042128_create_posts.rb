class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :imageUrl
      t.integer :city_id
      t.integer :user_id
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end
