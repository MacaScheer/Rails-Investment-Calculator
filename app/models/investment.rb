class Investment < ApplicationRecord
validates :principal, :num_years, :interest_rate, :company, :user_id

belongs_to :user

end