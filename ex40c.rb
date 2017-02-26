class Car

  def initialize(owner, seats, color, engine, brand)
    @owner = owner
    @seats = seats
    @color = color
    @engine = engine
    @brand = brand
  end

  def amount_of_passengers
    puts "There's room for #{@seats} in #{@owner}'s car"
  end

  def description
    puts "The car is a #{@brand} and it has a #{@engine} engine."
  end

end

magnus_car = Car.new("Magnus", 5, "Blue", "big", "Ford")

magnus_car.description

magnus_car.amount_of_passengers
