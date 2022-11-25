class Vehicle < ApplicationRecord
    belongs_to :route, optional:true
    has_many :drivers , dependent: :destroy


    def to_s
        plate
    end
end
