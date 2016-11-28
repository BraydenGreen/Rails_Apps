class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.belongs_to :person
      t.string :fabric
      t.string :size
      t.string :color
      t.string :pattern
      t.boolean :machine_washable

      t.timestamps null: false
    end
  end
end
