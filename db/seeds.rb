# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
Investment.destroy_all
Total.destroy_all


    user = User.create!(name: 'Tom Phillips', password: 'password123')

    30.times do |x|
        comp = Faker::Company.name
        princ = Faker::Number.number(digits:4)
        int_r = Faker::Number.decimal(l_digits:0,r_digits:3)
        n_y = Faker::Number.number(digits:2)
        tots = princ * (1 + (int_r * n_y))
        investment = Investment.create!(
            user_id: user.id,
            company: comp, 
            principal: princ,
            interest_rate: int_r,
            num_years: n_y,
            initial_total: tots
            )
        investment.save!
    end