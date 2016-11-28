class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :net_worth
      t.boolean :alive
      t.string :gender

      t.timestamps null: false
    end
  end
end
