class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :altitude
      t.boolean :capitol

      t.timestamps null: false
    end
  end
end
