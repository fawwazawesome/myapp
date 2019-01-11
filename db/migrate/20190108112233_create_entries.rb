class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.belongs_to  :user
      t.text        :description  
      JSON			:images   


      t.timestamps
    end
  end
end
