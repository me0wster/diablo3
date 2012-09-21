class Hero < ActiveRecord::Base
  attr_accessible :dead, :gender, :hardcore, :hero_class, :hero_id, :level, :name, :paragon_level, :profile
  
  belongs_to :profile
  
  has_many :items
  has_many :skills
  has_one :stat
end
