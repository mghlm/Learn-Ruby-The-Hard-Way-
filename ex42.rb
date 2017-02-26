## Animal is-a object look at the extra credit
class Animal
end

## Line represents a is-a relationship
class Dog < Animal

  def initialize(name)
    ## Dog has-a name ??
    @name = name
  end
end

## Cat is-a animal ??
class Cat < Animal

  def initialize(name)
    ## Cat has-a name  ??
    @name = name
  end
end

## Person is-a animal ??
class Person

  def initialize(name)
    ## Person has-a name ??
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person ??
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a name ?? hmm what is this strange magic?
    super(name)
    ## Employee has-a salary ??
    @salary = salary
  end

end

## Fish is-a Person ??
class Fish
end

## Salmon is-a Fish ??
class Salmon < Fish
end

## Halibut is-a Fish ??
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## Satan is-a Cat ??
satan = Cat.new("Satan")

## Mary is-a Person ??
mary = Person.new("Mary")

## mary has-a pet ??
mary.pet = satan

## Frank is-a Employee who has-a salary ??
frank = Employee.new("Frank", 120000)

## Frank has-a pet who has-a name which is rover ??
frank.pet = rover

## flipper is-a fish ??
flipper = Fish.new()

## course is-a salmond??
crouse = Salmon.new()

## harry is-a halibut ??
harry = Halibut.new()
