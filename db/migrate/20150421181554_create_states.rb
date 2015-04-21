class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	t.string :name
      t.boolean :grow
      t.text :grow_details
      t.boolean :possess
      t.text :possess_details
      t.string :carry_limit
      t.boolean :buy_or_sell
      t.text :buy_or_sell_details
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
