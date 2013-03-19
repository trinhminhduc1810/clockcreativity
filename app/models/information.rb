class Information < ActiveRecord::Base
  #attribute
  attr_accessible :description, :language, :material, :name, :price, :product_id, :currency

  #relationship
  belongs_to :product

  #Constant
  Information::VIETNAMESE = "vietnamese"
  Information::ENGLISH = "english"

  Information::VND = "VND"
  Information::USD = "USD"
end
