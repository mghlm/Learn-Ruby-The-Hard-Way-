#Assign the user file input (filename) to the variable "filename"
filename = ARGV.first

#Assign the action of opening the file (filename) to variable "txt"
txt = open(filename)

puts "Here's your file #{filename}:"

#Opens file
print txt.read

print "Type the filename again: "
#Takes a new input (file) and assign it to variable "file_again"
file_again = $stdin.gets.chomp

#Assign the action of opening that file to variable "txt_again"
txt_again = open(file_again)

#Opens file
print txt_again.read
