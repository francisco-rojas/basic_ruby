# Date: 11/07/2015
# Description: Create a User class 
# Developer: Javier Brenes Redondo

class User
  attr_accessor :last_Name
  attr_reader :age,:id
  attr_writer :age
  #se crea una variable de clase que sea un arreglo 
  @@users = []
  
  def first_name=(value) 

    @first_name = value
  end 

  def first_name 
    @first_name
  end

  #si tengo un metodo definido lo puedo sobreescribir
  #en la parte de abajo de la clase

  def save
    validate_first_name
    @id = @@users.count + 1
    @@users << self
  end
 
 #creamos un metodo de clase para poder ver los usuarios guardados
  def self.all
    @@users
  end
  #creamos un metodo de clase para retornar el total de usuarios 
  def self.count
    @@users.count
  end

  def destroy
    @@users.delete(self)
  end

  def self.find(id)
    @@users.find { |user| user.id == id }
  end

  def self.find_by(attribute,value)
    return [] unless value #!value#value.nil? # value == nil unless -> haga A si B es cierto
    @@users.find_all { |user| user.send(attribute) == value }
  end
    #leer sobre activeRecords 
  private 
  def validate_first_name 
    if first_name != String || first_name == "" || fist_name.delete(' ').count < 3
      raise "Invalid value for fist name"  
    end
  end
end