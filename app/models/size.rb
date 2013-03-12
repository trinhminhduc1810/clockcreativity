class Size < ActiveRecord::Base
  #Attribute
  attr_accessible :name, :size_id

  #Relationship
  has_many :products
end
