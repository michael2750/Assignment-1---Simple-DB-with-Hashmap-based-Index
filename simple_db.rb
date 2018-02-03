require 'gdbm'

is_running = true

hash = {}
gdbm = GDBM.new("database.db")
gdbm.each_pair do |key, value|
	hash[key] = value
end

puts "Welcome to the simple db type in your command."
puts "here is a list of commands:"
puts "set: save data to database. 'set 1 test"
puts "get: gets the data from database. 'get 1"
puts "read: reads alle the values stored in the database"
puts "exit: exits the program."
puts "help: prints the commands"
while(is_running) do
	command = gets
	command = command.split(' ')
	case command[0]
	when "get"
		puts "the value is: " + hash[command[1]]
		
	when "set"
		hash[command[1]] = command[2]
		gdbm[command[1]] = command[2]
		puts command[2] + " added to the database"
	when "read"
		hash.each do |key, value|
			puts "key: " + key + " value: " + value
		end
	when "exit"
		is_running = false
		puts "closing the program goodbye"
	when "help"
		puts "here is a list of commands"
		puts "set: save data to database. 'set 1 test"
		puts "get: gets the data from database. 'get 1"
		puts "exit: exits the program."
		puts "help: prints the commands"

	else
		print "unknown command"
	end
end
gdbm.close
