# Date: 11/07/2015
# Description: Create a User class 
# Developer: Javier Brenes Redondo

class User
  attr_accessor :last_Name 
  attr_reader :age
  attr_writer :age 
  
  def first_name=(value) 
    @first_name = value
  end 

  def first_name 
    @first_name
  end
end