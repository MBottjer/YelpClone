class Restaurant < ActiveRecord::Base

  has_many :reviews

  geocoded_by :address
  after_validation :geocode 

  def average
    reviews.map(&:rating).inject(&:+) / reviews.count unless reviews.count == 0
  end
  
end
