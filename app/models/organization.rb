class Organization < ApplicationRecord
  belongs_to :routes, optional: true
end
