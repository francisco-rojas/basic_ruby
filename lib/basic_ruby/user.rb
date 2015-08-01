class User
  attr_accessor :first_name, :last_name, :birth_date, :address, :age
  attr_reader :id

  @@users = []

  def self.all
    @@users
  end

  def self.count
    @@users.count
  end

  def self.find(id)
    @@users.find { |user| user.id == id }
  end

  def self.find_by(attribute, value)
    return [] unless value
    @@users.find_all { |user| user.send(attribute) == value }
  end

  def save
    validate_first_name
    @id = @@users.count + 1
    @@users << self
  end

  def destroy
    @@users.delete(self)
  end

  private
  def validate_first_name
    if first_name.class != String || first_name == "" || first_name.delete(' ').size < 3
      raise "Invalid value for first_name"
    end
  end
end