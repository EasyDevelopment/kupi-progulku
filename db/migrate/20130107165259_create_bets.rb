class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :value
      t.references :lot

      t.timestamps
    end
    add_index :bets, :lot_id
  end
end
