class Product < ActiveRecord::Base
  #attribute
  attr_accessible :size_id, :type_id

  #relationship
  belongs_to :type
  belongs_to :size

  has_many :informations
  has_many :images
end
