class AddPlaceLatitudeLongitudeToEntries< ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :place, :string
    add_column :entries, :latitude, :decimal
    add_column :entries, :longitude, :decimal
  end
end