require 'faker'

FactoryBot.define do
  factory :weapon do
    name { Faker::Name.name }
    description { Faker::Lorem.word }
    power_base {  rand(1..10000) }
    power_step { rand(1..99) }
    level { rand(1..99) }
  end
end
