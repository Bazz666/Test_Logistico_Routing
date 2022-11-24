class Driver < ApplicationRecord

    belongs_to :route, optional: true
    belongs_to :vehicle, optional: true
    enum driver_id: [:v1, :v2]

    def to_s
        name
    end
    
    
end
