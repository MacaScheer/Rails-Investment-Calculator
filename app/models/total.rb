class Total < ApplicationRecord
    belongs_to :investment,
    dependent: :destroy

    belongs_to :user,
    through: :investment,
    source: :user
end