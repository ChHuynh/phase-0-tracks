class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age, :reindeer_ranking

	def initialize(gender, ethnicity, age)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end #init end
	#makes santa speak
	def Speak
		puts "Ho, ho, ho! Haaappy holidays!"
	end #speak end
	
	#makes santa eat a cookie
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} here!"
	end #cookie end
	
	#status message about santa
	def about
		puts "Gender: #{@gender}"
		puts "ethnicity: #{@ethnicity}"
		puts "reindeer_ranking:  #{@reindeer_ranking}"
		puts "age: #{@age}"
	end
	
	# adds a year to santa's age
	def celebrate_birthday 
	@age += 1
	end

	# puts reindeer at the end of the list
	def get_mad_at(reindeer) 
		@reindeer_ranking.each do |name|
			if name == reindeer
				@reindeer_ranking.delete(reindeer)
				@reindeer_ranking << reindeer
			end
		end
	end

	#reindeer shuffle
	def reindeer_shuffle
		@reindeer_ranking.shuffle!
	end



end #class end

### creating lots and lots of santas
 
	def santa_machine(number)
	
	example_genders = ["male", "female", "agender", "bigender", "gender fluid", "other" ]
	example_ethnicities = ["black", "white", "Japanese", "lizzard", "merpeople" , "plant"]
	number.times do
  		santa = Santa.new(example_genders.sample, example_ethnicities.sample, rand(0..140))
  		santa.reindeer_shuffle
  		santa.about
  		end

end

###

### test code
#santa = Santa.new("male", "Japanese")
#santa.Speak
#santa.eat_milk_and_cookies("chocolate chip cookie")
#santa.get_mad_at("Dasher")
#santa.celebrate_birthday
#santa.gender = "robot"
#santa.about
santa_machine(50)

