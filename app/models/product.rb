class Product < ActiveRecord::Base
  #Attribute
  attr_accessible :code, :description, :material, :name, :price, :size_id, :type_id

  #Relationship
  belongs_to :size
  belongs_to :type
end
