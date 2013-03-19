class Image < ActiveRecord::Base
  #attribute
  attr_accessible :product_id, :url

  #relationship
  belongs_to :product
end
