# require 'faker'

# 3.times do
#   Sealion.create({name: Faker::Name.first_name, weight: Faker::Number.number(3)})
# end


Sealion.create!(name: "Charlie", weight: 345)
Sealion.create!(name: "Martha", weight: 123)
Sealion.create!(name:"JoJo", weight: 234)


