class Route < ApplicationRecord
 
  has_many :drivers
  has_many :vehicles 

  enum status: [:llegada, :recogida]
  
end