class User < ApplicationRecord

    has_many :investments,
    dependent: :destroy

    def calculate_total
        
    end

end