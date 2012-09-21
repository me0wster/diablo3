class Stat < ActiveRecord::Base
  attr_accessible :life, :damage, :attack_speed, :armor, 
    :strength, :dexterity, :vitality, :intelligence,
    :physical_resist, :fire_resist, :cold_resist, :lightning_resist, :poison_resist, :arcane_resist,
    :crit_damage, :damage_increase, :crit_chance, :damage_reduction, :block_chance,
    :thorns, :life_steal, :life_per_kill,
    :gold_find, :magic_find,
    :block_amount_min, :block_amount_max, 
    :life_on_hit,
    :primary_resource, :secondary_resource
  
  belongs_to :hero
  # attr_accessible :title, :body
end
