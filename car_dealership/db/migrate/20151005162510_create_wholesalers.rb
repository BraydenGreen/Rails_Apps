class CreateWholesalers < ActiveRecord::Migration
  def change
    create_table :wholesalers do |t|
      t.string :name
      t.integer :inventory
      t.has_many :dealerships

      t.timestamps null: false
    end
  end
end
