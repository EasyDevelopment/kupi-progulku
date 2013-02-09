class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.boolean :male
      t.string :nickname
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.text :slogan
      t.string :photo_url
      t.belongs_to :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
