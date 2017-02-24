def start
  puts "Do you want to play a game of Rock, Paper, Scissors? y/n"
  play = $stdin.gets.chomp

  if play == "y"
    begin_game
  elsif play == "n"
    exit(0)
  else
    puts "I don't understand that command."
  end
end

def begin_game
  puts "Do you choose rock, paper or scissors?"
  puts "> "
  computer_choices = ['rock', 'paper', 'scissors']

  choice = $stdin.gets.chomp
  computer_choice = computer_choices.sample

  puts "You chose #{choice}, and the computer chose #{computer_choice}."

  if choice == computer_choice
    puts "That's a draw, try again"
    begin_game
  elsif (choice == "rock") && (computer_choice == "paper")
    puts "Computer win."
    play_again
  elsif (choice == "rock") && (computer_choice == "scissors")
    puts "You win!"
    play_again
  elsif (choice == "paper") && (computer_choice == "scissors")
    puts "Computer win."
    play_again
  elsif (choice == "paper") && (computer_choice == "rock")
    puts "You win!"
    play_again
  elsif (choice == "scissors") && (computer_choice == "rock")
    puts "Computer win."
    play_again
  else
    puts "You win."
    play_again
  end
end

def play_again
  puts "Do you want to try again? y/n"
  play_again = $stdin.gets.chomp
  if play_again == "y"
    begin_game
  else
    exit(0)
  end
end

start
