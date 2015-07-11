require 'spec_helper'
describe User do
  it "sets the first name" do
    user = User.new 
    user.first_name = "Javier"
    expect(user.first_name).to eq "Javier"
  end

  it "sets the last name" do
    user = User.new 
    user.last_Name = "Brenes"
    expect(user.last_Name).to eq "Brenes"
  end

   it "sets the age" do
    user = User.new 
    user.age = 20
    expect(user.age).to eq 20
  end
end