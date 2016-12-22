class Santa
	def initialize
		puts "Initializing Santa instance ..."
	end

	def Speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} here!"
	end

end

santa = Santa.new
santa.Speak
santa.eat_milk_and_cookies("chocolate chip cookie")