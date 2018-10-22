class Person
  attr_reader :name
  # read the property (getter method)
  attr_writer :name
  # write the property (setter method)

  attr_accessor :name
  # both read and write

  @@population = 0 
  # @@ class variable

  def initialize(name, age)
    @name = name 
    @age = age
    # @ instance variable 
    @@population += 1
    # add 1 to population everytime a person is created
  end

  def self.population
    @@population
  end

  def self.print_population
    puts "There are #{self.population} people"
  end

  private
  attr_reader :age


  
end


John = Person.new("John", 23)
puts John.inspect
Person.new("Max", 29)
Person.new("Emily",30)
Person.print_population


# foo = [1, 2, 3]
# bar = Proc.new { puts "test"}
# foo.map(&bar)

class Fabric
  attr_reader :title
  # read the property (getter method)
  attr_writer :title
  # write the property (setter method)
  attr_accessor :title
  # both read and write

  @@quantity = 0 

  def initialize(title, type)
    @title = title
    @type = type
    # @ instance variable 

    @@quantity += 1
    # add 1 to quantity everytime a fabric is created
  end

  def self.quantity
    @@quantity
  end

  def self.print_quantity
    puts "There are #{self.quantity} fabric"
  end
end