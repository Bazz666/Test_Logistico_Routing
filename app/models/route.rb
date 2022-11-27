class Route < ApplicationRecord
 
  has_many :drivers, dependent: :destroy
  has_many :vehicles, dependent: :destroy
  has_many :organizations, dependent: :destroy

  accepts_nested_attributes_for :drivers 
  accepts_nested_attributes_for :vehicles 
  accepts_nested_attributes_for :organizations
 
  # validates :name, presence: true
  # validates :plate, presence: true
  validates_associated :drivers
  validates_associated :vehicles

  validates :start_at, :presence => true
  validates :ends_at, :presence => true
  validates :travel_time, :presence => true
  validates :total_stops, :presence => true 
  validates :status, :presence => true 
  

  enum status: [:llegada, :recogida]
  
  
  
  
end