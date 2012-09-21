class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :hero

      t.timestamps
    end
    add_index :items, :hero_id
  end
end
