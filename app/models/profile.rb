class Profile < ActiveRecord::Base
  attr_accessible :profile_name
  validates_uniqueness_of :profile_name
  validates :profile_name, :presence => true
  validate :async_check_bliz_profile
  
  has_many :heros
  
  include ProfilesHelper
  
  after_commit :async_pull_from_bliz, :on => :create
  
  def async_check_bliz_profile
    check_bliz_profile self
  end
  
  def async_pull_from_bliz
    pull_from_bliz self
  end
end
