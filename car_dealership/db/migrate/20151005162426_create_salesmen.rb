class CreateSalesmen < ActiveRecord::Migration
  def change
    create_table :salesmen do |t|
      t.string :name
      t.boolean :successful
      t.belongs_to :dealership

      t.timestamps null: false
    end
  end
end
