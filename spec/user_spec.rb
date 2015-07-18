require 'spec_helper'
describe User do
  before(:each) do
    User.class_variable_set(:@@users,[])
  end
  describe "instance method" do 
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
  describe "class methods" do
    it 'saves the user intance into the @@users array' do
      user = User.new
      user.first_name = "Francisco"
      expect(User.count).to eq 0
      user.save 
      expect(User.count).to eq 1
      expect(user.id).to eq 1
    end 

    it "returns an array with all users" do
      user = User.new 
      user.first_name = "Gustavo"
      user.save
      expect(User.all).to eq [user] 
    end

    it "removes the user instance from the @@users array" do
      user = User.new 
      user.first_name = "Gustavo"
      user.save
      expect(User.count).to eq 1
      user.destroy
      expect(User.count).to eq 0
    end

    it "finds the user with the given id" do
      user = User.new 
      user.first_name = "Gustavo"
      user.save
      
      user2 = User.new 
      user2.first_name = "ramon"
      user2.save
      expect(User.find(user2.id)).to eq user2
    end

    it "finds the user with the given id" do
      user = User.new 
      user.first_name = "Gustavo"
      user.save
      
      user2 = User.new 
      user2.first_name = "ramon"
      user2.save

      user3 = User.new 
      user3.first_name = "ramon"
      user3.save
      expect(User.find_by(:first_name,"ramon")).to eq [user2, user3]
    end

  end
end