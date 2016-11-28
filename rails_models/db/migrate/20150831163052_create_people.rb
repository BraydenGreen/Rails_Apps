class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :race
      t.string :hair_color
      t.boolean :alive

      t.timestamps null: false
    end
  end
end
