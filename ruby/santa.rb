class Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	#makes santa speak
	def Speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end
	#makes santa eat a cookie
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} here!"
	end
	#status message about santa
	def about
		puts "Gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"
		puts "reindeer_ranking:  #{@reindeer_ranking}"
		puts "age: #{@age}"
	end
end
###
#santa = Santa.new("male", "Japanese")
#santa.Speak
#santa.eat_milk_and_cookies("chocolate chip cookie")
#santa.about

###
#user input for initializing their own santa


def santa_add
santas = []
puts "Welcome to the santa database program"
quit_function = false
	until quit_function
		puts "Would you like to add a santa to the database? (y/n)"
		valid_input = false
		until valid_input
			yes_no = gets.chomp
			
			if yes_no == "y" || yes_no == "Y"
				puts "What is the santa's gender?"
				gen = gets.chomp
				puts "What is santa's ethnicity?"
				eth = gets.chomp
				valid_input = true
				santas << Santa.new(gen, eth)

			elsif yes_no == "n" || yes_no == "N"
			puts "Thank you for using the santa database program."
			quit_function = true
			valid_input = true
			santas.each do |santa|
			santa.about
			end
		end
	end
end
end
###

santa_add