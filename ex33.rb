def loop(times, increase)
  i = 0
  numbers = []

  while i < times
    puts "At the top i is #{i}"
    numbers << i

    i += increase
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

end

loop(10, 2)
