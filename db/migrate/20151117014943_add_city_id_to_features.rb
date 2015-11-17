class AddCityIdToFeatures < ActiveRecord::Migration
  def change
    add_column :features, :city_id, :integer
  end
end
