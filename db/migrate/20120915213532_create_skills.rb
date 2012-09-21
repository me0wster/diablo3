class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :hero

      t.timestamps
    end
    add_index :skills, :hero_id
  end
end
