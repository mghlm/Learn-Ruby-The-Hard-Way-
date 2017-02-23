def monster_room
  puts "You enter a room, but are met by a big monster. You can either fight the monster or go back. What do you do?"
  puts "Press '1' to fight."
  puts "Press '2' to go back."
  choice = $stdin.gets.chomp

  if choice == "1"
    die("You lost the fight and died.")
  elsif choice == "2"
    start
  else die("That's not an option, you died.")
  end
end


def weapon_room
  sword = false
  knife = false
  puts "You enter a room in which you find two weapons: a sword and a knife. Which one do you choose?"
  weapon = $stdin.gets.chomp

  if weapon == "sword"
    sword = true
    treasure_room(sword, knife)
  elsif weapon == "knife"
    knife = true
    treasure_room(sword, knife)
  else
    die("There is no such thing in here.")
  end
end

def treasure_room(sword, knife)

  puts "Good choice. You continue into another room in which you encounter an evil dragon guarding a treasure."
  puts "Do you fight the dragon? yes/no"
  choice = $stdin.gets.chomp

  if (choice == "yes") && (sword == true)
    puts "Hooray, you killed the dragon and the treasure is yours."
  elsif (choice == "yes") && (knife == true)
    die("The knife wasn't big enough, and the dragon killed you.")
  elsif choice == "no"
    puts "You don't get the treasure and die from dissapointment in yourself."
  else
    die("That's not an option, you die.")
  end
end

def die(reason)
  puts reason
  exit(0)
end

def start
  puts "You are in a dark room with two doors, which one do you open?"
  puts "Press '1' for door 1."
  puts "Press '2' for door 2."
  door = $stdin.gets.chomp

  if door == "1"
    monster_room
  elsif door == "2"
    weapon_room
  else
    die("That's not an option, you're dead.")
  end
end

start
