class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :hero_id
      t.integer :level
      t.boolean :hardcore
      t.integer :paragon_level
      t.integer :gender
      t.boolean :dead
      t.string :hero_class
      t.references :profile

      t.timestamps
    end
  end
end
