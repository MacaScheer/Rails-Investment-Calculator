# json.user investment.user.name
# json.principal
# json.total investment.total



json.extract! investment, :user_id, :created_at, :principal, :company, :interest_rate, :total
json.total investment.total
json.total 
json.user investment.user.name


# json.totals investment.totals do |total|
#     total.date total.

# end