class Size < ActiveRecord::Base
  #attribute
  attr_accessible :length, :unit

  #relationship
  has_many :products
end
