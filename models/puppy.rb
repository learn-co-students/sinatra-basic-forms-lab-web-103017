class Puppy
  attr_accessor :name, :breed, :age
  attr_reader :breed, :age
  def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed
  end

end
