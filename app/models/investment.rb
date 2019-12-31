class Investment < ApplicationRecord
# validates :principal, :num_years, :interest_rate, :company, :user_id

belongs_to :user
#replace current_total
#calculate total here?

    def self.calculate(principal, num_years, investment_rate)
        @total = principal.to_f * (1 + (investment_rate.to_f * num_years.to_f))
    end
end