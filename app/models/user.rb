class User < ApplicationRecord

    has_many :investments,
    dependent: :destroy

    has_many :totals,
    through: :investments,
    source: :total,
    dependent: :destroy



end