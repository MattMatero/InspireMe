class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :lat
      t.string :lng
      t.boolean :like
      t.integer :userId

      t.timestamps null: false
    end
  end
end
