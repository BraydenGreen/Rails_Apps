class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :name
      t.integer :budget
      t.belongs_to :dealership

      t.timestamps null: false
    end
  end
end
