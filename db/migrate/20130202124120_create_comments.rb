class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :lot

      t.timestamps
    end
    add_index :comments, :lot_id
  end
end
