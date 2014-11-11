class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      
      t.string :street_address
      t.string :city
      t.string :state

      t.integer :fresh_votes, default: 0
      t.integer :rotten_votes, default: 0

      t.timestamps
    end
  end
end
