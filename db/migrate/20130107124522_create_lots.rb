class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :pid
      t.string :photo
      t.string :photo_big
      t.string :name
      t.string :link
      t.string :slogan

      t.timestamps
    end
  end
end
