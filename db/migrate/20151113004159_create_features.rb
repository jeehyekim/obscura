class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.string :address
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
