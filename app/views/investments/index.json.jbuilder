@investments.each do |investment|
    json.set! investment.id do
        json.partial! 'investment', investments: investment
    end
end