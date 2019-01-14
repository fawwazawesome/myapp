class AddPlaceLatitudeLongitudeToEntries< ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :place, :string
    add_column :listings, :latitude, :decimal
    add_column :listings, :longitude, :decimal
  end
end