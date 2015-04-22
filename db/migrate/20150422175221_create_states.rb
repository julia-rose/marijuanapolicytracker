class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
    	    	t.string :name
    	t.string :possession
    	t.text :possession_details
    	t.string :paraphernalia
    	t.text :paraphernalia_details
    	t.string :consumption
    	t.text :consumption_details
    	t.string :growing
    	t.text :growing_details
    	t.string :medical
    	t.text :medical_details
    	t.string :buy_or_sell
    	t.text :buy_or_sell_details
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
