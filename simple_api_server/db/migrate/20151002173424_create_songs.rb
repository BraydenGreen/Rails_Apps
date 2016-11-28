class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :length
      t.boolean :explicit, default: true
      t.string :feat
      t.boolean :auto_tuned
      t.belongs_to :rapper

      t.timestamps null: false
    end
  end
end
