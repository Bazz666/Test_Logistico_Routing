class Vehicle < ApplicationRecord
    has_many :routes
    belongs_to :driver , optional: true


    def v_routing
        @vehicles = Vehicle.where(id: [1,2,3,4,5])
    end

    def v_pricing
        @vehicles = Vehicle.where(id: [6,7,8])
    end

    def to_s
        plate
    end
end
