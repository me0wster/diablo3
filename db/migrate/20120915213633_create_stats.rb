class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :life
      t.decimal :damage
      t.decimal :attack_speed
      t.integer :armor
      t.integer :strength
      t.integer :dexterity
      t.integer :vitality
      t.integer :intelligence
      t.integer :physical_resist
      t.integer :fire_resist
      t.integer :cold_resist
      t.integer :lightning_resist
      t.integer :poison_resist
      t.integer :arcane_resist
      t.decimal :crit_damage
      t.decimal :damage_increase
      t.decimal :crit_chance
      t.decimal :damage_reduction
      t.decimal :block_chance
      t.integer :thorns
      t.integer :life_steal
      t.integer :life_per_kill
      t.decimal :gold_find
      t.decimal :magic_find
      t.integer :block_amount_min
      t.integer :block_amount_max
      t.integer :life_on_hit
      t.integer :primary_resource
      t.integer :secondary_resource
      t.references :hero

      t.timestamps
    end
    add_index :stats, :hero_id
  end
end
