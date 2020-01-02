json.extract! user, :id, :name
json.investments user.investments do |investment|

end

json.totals user.investments.totals do |total|
    json.investment_total total.investment
end