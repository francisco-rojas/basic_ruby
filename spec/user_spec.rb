require 'spec_helper'

describe User do
  before(:each) do
    User.class_variable_set(:@@users, [])
  end

  describe 'instance methods' do
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

    it 'saves the user instance into the @@users array' do
      user = User.new
      user.first_name = "Francisco"
      expect(User.count).to eq 0
      user.save
      expect(User.count).to eq 1
    end
  end

  describe 'class methods' do
    it 'returns an array with all users' do
      user = User.new
      user.first_name = "Francisco"
      user.save

      expect(User.all).to eq [user]
    end
  end
end