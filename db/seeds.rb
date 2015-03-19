require 'faker'

10.times do
  Sealion.create({name: Faker::Name.name})
end