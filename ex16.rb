#Assign the user input value (filename) to the variable "filename"
filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#Gets input from user (either "RETURN"(yes - delete) or "^C"(nope, don't delete))
$stdin.gets

puts "Opening the file..."
#Assign the action of opening the file to the variable "target" and use the 'w'-mode to make sure you can write the file.
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
#Deletes the file (run truncate method on target variable)
target.truncate(0)

puts "Now I'm going to ask you for three lines."

#Takes three user inputs, assign them to each their variable (line1, line2, line3)
print "Line 1: "
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

#Run the write method on the target variable (the filename in w mode) and use the user inputs as parameters. Also write a new line. 
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
