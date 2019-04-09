require 'rails_helper'
require 'faker'

RSpec.describe Weapon, type: :model do
  it "returns the correct weapon title" do
    name = Faker::Name.name
    level = rand(1...99)
    weapon = Weapon.create(name: name,level: level)
    expect(weapon.title).to eq("#{name}##{level}")
  end

end
