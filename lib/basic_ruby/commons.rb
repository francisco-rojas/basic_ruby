module Commons
  attr_reader :id

  def self.included(base)
    base.extend(ClassMethods)
  end

  def destroy
    self.class.collection.delete(self)
  end

  def save
    validations.each { |validation| self.send(validation) }
    @id = self.class.collection.count + 1
    self.class.collection << self
  end

  module ClassMethods
    def count
      collection.count
    end

    def all
      collection
    end

    def find(id)
      collection.find { |record| record.id == id }
    end

    def find_by(attribute, value)
      return [] unless value
      collection.find_all { |record| record.send(attribute) == value }
    end
  end
end