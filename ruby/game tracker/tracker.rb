# make a database that a user can use to keep track of new games that are released.
# program asks for user input for games that the user wants to keep track of
# user can add, or remove games
# user can also look at the list of games that have been added to the list
# user can look for specific data like pull up what games will be coming out in what month
# user can look up platform the user wants to get the game for


# it currently isnt really user friendly, as was designed for personal use.

require 'sqlite3'

#create a database for the tracker
data = SQLite3::Database.new( "data.db" )
data.results_as_hash = true

create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS games(
	id INTEGER PRIMARY KEY,
	name  VARCHAR(255),
	platform VARCHAR(255),
	month VARCHAR(255),
	year VARCHAR(255)
	);

SQL


#add game
	def add_game(data, name, platform, month, year)
	data.execute("INSERT INTO games (name, platform, month, year) VALUES (?, ?, ?, ?)", [name, platform, month, year])
	end

#delete game
	def delete_game(data, name)
		data.execute("DELETE from games WHERE name=(?)", [name])
	end


	def view_games(data)
	allgames = data.execute("SELECT * FROM games")
 		puts "___________________________"
 		allgames.each do |games|
  		puts "title: #{games['name']}"
  		puts "platform: #{games['platform']}."
  		puts "release timing: #{games['month']} #{games['year']}."
  		puts "___________________________"
  		end
  	end





#look at specific search query)
	def platform_search(data, plat)
	platform_data = data.execute("SELECT * FROM games WHERE platform =(?)", [plat])
		puts "___________________________"
		platform_data.each do |games|
  		puts "title: #{games['name']}"
  		puts "platform: #{games['platform']}."
  		puts "release timing: #{games['month']} #{games['year']}."
  		puts "___________________________"
  		end
	end

	def month_search(data, month)
		month_data = data.execute("SELECT * FROM games WHERE month =(?)", [month])
		puts "___________________________"
		month_data.each do |games|
  		puts "title: #{games['name']}"
  		puts "platform: #{games['platform']}."
  		puts "release timing: #{games['month']} #{games['year']}."
  		puts "___________________________"
  		end
  	end

  	def year_search(data, year)
  		year_data = data.execute("SELECT * FROM games WHERE year =(?)", [year])
		puts "___________________________"
		year_data.each do |games|
  		puts "title: #{games['name']}"
  		puts "platform: #{games['platform']}."
  		puts "release timing: #{games['month']} #{games['year']}."
  		puts "___________________________"
  		end
  	end

####
#driver code

data.execute(create_table)

finished = false
until finished == true


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
		puts "#{title} has been added to list."
	

	elsif action == "2" #removes a game from the table
		puts "please enter the title of the game you wish to remove from the database."
		title_remove = gets.chomp
		delete_game(data, title_remove)
		puts "#{title_remove} has been removed from the list."
	

	elsif action == "3" #view list
		view_games(data)
  	

	elsif action == "4" #searching for specifics
		puts "how do you want to narrow your search?(by platform, month, year)"
		search_type = gets.chomp
			if search_type == "platform"
				puts "what platform do you wish to search for?"
				plat_get = gets.chomp
				platform_search(data, plat_get)
			end

			if search_type == "month"
				puts "what month do you wish to search for?"
				month_get = gets.chomp
				month_search(data, month_get)
			end

			if search_type == "year"
				puts "what year do you wish to search for?"
				year_get = gets.chomp
				year_search(data, year_get)
			end
	

	elsif action == "5" #exit program
		puts "thank you for using the game release tracker program."
		finished = true
	
	else
		puts "invalid option, please try again."
end

end #until end
