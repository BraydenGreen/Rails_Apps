class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :age
      t.float :price
      t.integer :mileage
      t.string :color
      t.string :interior
      t.belongs_to :dealership

      t.timestamps null: false
    end
  end
end
