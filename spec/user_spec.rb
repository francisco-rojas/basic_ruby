require 'spec_helper'

describe User do
  it "sets the first name" do
    user = User.new
    user.first_name = "Francisco"

    expect(user.first_name).to eq "Francisco"
  end

  it "sets the last name" do
    user = User.new
    user.last_name = "Rojas"

    expect(user.last_name).to eq "Rojas"
  end

  it "sets the age" do
    user = User.new
    user.age = 27

    expect(user.age).to eq 27
  end
end