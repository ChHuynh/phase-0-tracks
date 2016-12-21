class Puppy

#initialize method
	def initialize
	puts "Initializing new puppy instance  ..."
	end

#ball fetch method
	def fetch
    	puts "I brought back the ball!"
    end
# speaking method
	def speak(num)
		num.times{puts "woof"}
	end
#rollover
	def rollover
		puts "rollover"
	end
#dog years
	def dog_years(human)
	dog_years = human * 7
		puts "i am #{dog_years} years old"
	end
#leap over object
	def leap(obj)
		puts "jumps over the #{obj}"
	end
end

fido = Puppy.new
fido.fetch
fido.speak(3)
fido.rollover
fido.dog_years(10)
fido.leap("fence")

#our own class
class Basketball_player
	def initialize
		puts "a new player has entered the court"
	end
#player shoots the ball
	def shoot
		puts "shoots the ball into the net!"
	end

#player passes the ball
	def pass
		puts "passes the ball to a teammate"
	end

#player dribbles the ball x number of times
	def dribble(num)
		num.times{puts "dribbles the ball"}
	end
end

#make 50 basketball players and put them into an array


#add however many players i want



def player_exercise(num)
	player_arr= []	
	num.times{player_arr << Basketball_player.new
	#each player does some work
	
	player_arr.each do |player|
	player.pass
	player.dribble(4)
	player.shoot
	end}
end
player_exercise(50)
