class Type < ActiveRecord::Base
  #Attribute
  attr_accessible :name, :type_id

  #Relationship
  has_many :products
end
