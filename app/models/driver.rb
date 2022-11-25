class Driver < ApplicationRecord
    belongs_to :vehicle, optional: true
    belongs_to :routes , optional: true

    def to_s
        name
    end
    
    
end
