class AddImagesToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :images, :json
  end
end
