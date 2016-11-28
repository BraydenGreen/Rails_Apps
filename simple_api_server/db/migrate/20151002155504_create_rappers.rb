class CreateRappers < ActiveRecord::Migration
  def change
    create_table :rappers do |t|
      t.string :name, null: false
      t.integer :street_cred, default: 0
      t.string :home_town
      t.float :net_worth, default: 0
      t.integer :number_of_guns, default: 0
      t.integer :teardrops, default: 0
      t.boolean :og, default: false
      t.boolean :been_to_jail, default: false

      t.timestamps null: false
    end
  end
end
