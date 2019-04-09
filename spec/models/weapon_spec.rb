require "rails_helper"
require "faker"

RSpec.describe Weapon, type: :model do
  it "returns the correct weapon title" do
    name = Faker::Name.name
    level = rand(1...99)
    weapon = Weapon.create(name: name, level: level)
    expect(weapon.title).to eq("#{name}##{level}")
  end

  it "returns the correct weapon current power" do
    power_base = 2
    level = 3
    power_step = 3
    weapon = build(:weapon, level: level, power_base: power_base,
                            power_step: power_step)
    expect(weapon.current_power).to eq(8)
  end
end
