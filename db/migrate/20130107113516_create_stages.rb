class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.string :men_album
      t.string :women_album

      t.timestamps
    end
  end
end
