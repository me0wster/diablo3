class Run < ActiveRecord::Base
  attr_accessible :date, :gold_after, :gold_before, :gold_earned, :time_spent
end
