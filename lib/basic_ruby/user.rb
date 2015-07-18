class User
  attr_accessor :last_name, :birth_date, :address
  attr_reader :age, :id
  attr_writer :age
  @@users = []

  def first_name=(value)
    @first_name = value
  end

  def first_name
    @first_name
  end

  def save
    @id = @@users.count + 1
    @@users << self
  end

  def self.all
    @@users
  end

  def self.count
    @@users.count
  end

  def destroy
    @@users.delete(self)
  end
end