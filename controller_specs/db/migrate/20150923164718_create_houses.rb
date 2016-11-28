class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :bedrooms
      t.float :bathroom
      t.integer :year_built
      t.integer :square_feet
      t.integer :garages
      t.float :price
      t.belongs_to :person

      t.timestamps null: false
    end
  end
end
