#need to switch first and last name around
# vowels need to be pushed to next vowel
# consonants get changed to next consonant
# edgecases that probably will have to look at: the letter u, z, and consonants before vowels
# will also have to deal with uppercase letters.
#then needs user interface
# Felicia Torres should become Vussit Gimodoe in our program
#need to then add names into a database type thing and print out all the names that have been saved


database = {}
#swapping method
	def letter_swap(x)
		x.tr!('aeiou', 'eioua')
		counter = 0
		while counter < x.length
			if x[counter] == " "
			x[counter] = x[counter]
			
			elsif x[counter] == "a" || x[counter] == "e" || x[counter] == "i" || x[counter] == "o" || x[counter] == "u"

			elsif x[counter] == "z"
			x[counter] = "b"

			elsif x[counter] == "d"
			x[counter] = "f"

			elsif x[counter] == "h"
			x[counter] = "j"

			elsif x[counter] == "n"
			x[counter] = "p"

			elsif x[counter] == "t"
			x[counter] = "v"

			else 
			x[counter] = x[counter].next
			end
		counter += 1
		end
	x.split.map(&:capitalize).join(' ')
	end


puts "welcome to the alias manager program"
quit_function = false
until quit_function
	puts "would you like to create and add an alias to the database? (y/n)"
		valid_input = false
		until valid_input
		yes_no = gets.chomp
		if yes_no == "y" || yes_no == "Y"
			puts "what is the first name of the agent?"
			first_name = gets.chomp
			puts "what is the last name of the agent?"
			last_name = gets.chomp
			valid_input = true
		full_name = first_name + " " + last_name
		swap_name = last_name.downcase + " " + first_name.downcase
		new_alias = letter_swap(swap_name)
		database[full_name] = new_alias
		
		elsif yes_no == "n" || yes_no == "N"
		quit_function = true
		valid_input = true
		
		database.each do |agent, newname|
	puts "#{agent}'s alias is #{newname}"
				end
		
		else puts "invalid input, please try again."
		end
end
end
