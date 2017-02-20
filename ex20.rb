#Takes user input file
input_file = ARGV.first

#Method that takes one paramter (f) and runs the .read method on it, which will print it out.
def print_all(f)
  puts f.read
end

#Method that takes one parameter (f) and runs .seek method on it, which will rewind the file.
def rewind(f)
  f.seek(0)
end

#Method will take two parameters - first one (line_count) will put the line number, second puts the line from the file.
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}" #Why gets.chomp???
end

#Assign the action of opening the input file to the variable "current_file"
current_file = open(input_file)

puts "First, let's print the whole file:\n"

#Runs first method with input file as argument
print_all(current_file)

puts "Now, let's rewind, kind of like a tape."

rewind(current_file)

puts "Let's print three Lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
