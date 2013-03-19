class Type < ActiveRecord::Base
  #attribute
  attr_accessible :name

  #relationship
  has_many :products
end
