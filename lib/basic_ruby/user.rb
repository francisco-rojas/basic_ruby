class User
  attr_accessor :last_name
  attr_reader :age
  attr_writer :age

  def first_name=(value)
    @first_name = value
  end

  def first_name
    @first_name
  end
end