class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.boolean :male
      t.string :name
      t.string :link
      t.string :slogan
      t.string :pid
      t.string :photo
      t.string :photo_big
      t.references :stage

      t.timestamps
    end
    add_index :lots, :stage_id
  end
end
