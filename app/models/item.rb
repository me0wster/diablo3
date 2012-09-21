class Item < ActiveRecord::Base
  belongs_to :hero
  # attr_accessible :title, :body
end
