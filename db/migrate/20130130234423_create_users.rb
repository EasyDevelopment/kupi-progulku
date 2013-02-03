class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gender
      t.string :username
      t.string :surname
      t.string :name
      t.string :middlename
      t.integer :phonenumber
      t.string :url
      t.string :urlphoto
      t.string :slogan
      t.integer :uid

      t.timestamps
    end
  end
end
