class User < ApplicationRecord

    has_many :investments,
    dependent: :destroy

    

end