class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :urls
      t.string :location
      t.boolean :verified

      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
  def down
  drop_table :users
  end
end
