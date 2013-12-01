class Restaurant < ActiveRecord::Base

  has_many :reviews

  geocoded_by :address
  after_validation :geocode 
  
end
