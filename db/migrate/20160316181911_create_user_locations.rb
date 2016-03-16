class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.integer :userId
      t.integer :locationId

      t.timestamps null: false
    end
  end
end
