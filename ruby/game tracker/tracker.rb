# make a database that a user can use to keep track of new games that are released.
# program asks for user input for games that the user wants to keep track of
# user can add, or remove games
# user can also look at the list of games that have been added to the list
# user can look for specific data like pull up what games will be coming out in what month and year
# user can look up platform the user wants to get the game for
# make a command for checking to see if a game has been released, and then flagging it as such

require 'sqlite3'

#create a database for the tracker
data = SQLite3::Database.new( "data.db" )

create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS games(
	id INTEGER PRIMARY KEY,
	name  VARCHAR(255),
	platform VARCHAR(255),
	month VARCHAR(255),
	year VARCHAR(255)
	);

SQL



#create user functionality

#add game
	def add_game(data, name, platform, month, year)
	data.execute("INSERT INTO games (name, platform, month, year) VALUES (?, ?, ?, ?)", [name, platform, month, year])
	end

#look at games been added to list
	def all_games
	data.execute("SELECT * FROM games")
	end

#look at platforms (PC, PS4, etc)
	def platforms(plat)
	data.execute("SELECT * FROM games WHERE platform = ?", [plat])
	end




####
#driver code

data.execute(create_table)




puts "options:"
puts "1. add game"
puts "2. remove game"
puts "3. view list"
puts "4. search by"
puts "5. end the program"
puts "enter number of desired action"
action = gets.chomp

	if action == "1" #adding a game to the database
		puts "please enter the game title."
		title = gets.chomp
		puts "please enter the platform of the game"
		game_platform = gets.chomp
		puts "please enter the month the game will be released in."
		game_month = gets.chomp
		puts "please enter the year the game will be released in."
		game_year = gets.chomp
		add_game(data, title, game_platform, game_month, game_year)
		puts "game has been added to list."
	end

#	if action == 2
#		#remove game stuff here
#	end

#	if action == 3
#	end
	

#	if action == 4
#	end
	

#	if action == 5
#		finished = true
#	end

