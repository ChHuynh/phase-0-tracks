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







####
#driver code

data.execute(create_table)