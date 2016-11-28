class CreateDealerships < ActiveRecord::Migration
  def change
    create_table :dealerships do |t|
      t.string :name
      t.integer :inventory
      t.boolean :profitable

      t.timestamps null: false
    end
  end
end
