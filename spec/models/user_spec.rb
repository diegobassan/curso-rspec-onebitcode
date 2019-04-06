require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  it "is invalid if the level is not between 1 and 99" do
    nickname = Faker::Name.name
    kind = %i[knight wizard].sample
    level = rand(100...999)
    user = User.new(nickname: nickname, kind: kind, level: level)
    expect(user).to_not be_valid
  end
  it "is valid hero" do
    nickname = Faker::Name.name
    kind = %i[knight wizard].sample
    level = rand(1...99)
    user = User.new(nickname: nickname, kind: kind, level: level)
    expect(user).to be_valid
  end
  it "returns the correct hero title" do
    nickname = Faker::Name.name
    kind = %i[knight wizard].sample
    level = rand(1...99)

    user = User.create(nickname: nickname,kind: kind, level: level)
    expect(user.title).to eq("#{kind} #{nickname} ##{level}")
  end
end
