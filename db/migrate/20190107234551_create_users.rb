class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :uid
      t.string :token
      t.string :provider
      t.string :name
      t.string :oauth_token
      t.string :oauth_expires_at

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email
  end
end
