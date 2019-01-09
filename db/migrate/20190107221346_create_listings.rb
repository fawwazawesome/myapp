class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to  :user
      t.string      :name
      t.string      :country
      t.text        :description     


      t.timestamps
    end
  end
end
