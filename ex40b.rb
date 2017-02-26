class Person

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def greetings
    puts "Hello, my name is #{@first_name} #{@last_name}."
  end

  def tell_age
    puts "I'm #{@age} years old."
  end

end

magnus = Person.new("Magnus", "Holm", 28)

magnus.greetings

magnus.tell_age
