class Organization < ApplicationRecord
  belongs_to :routes, optional: true


  def to_s
      name
  end


end
