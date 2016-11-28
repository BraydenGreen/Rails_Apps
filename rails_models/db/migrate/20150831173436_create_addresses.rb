class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.belongs_to :person

      t.timestamps null: false
    end
  end
end
