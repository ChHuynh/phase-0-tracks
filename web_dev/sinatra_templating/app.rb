# require gems
require 'sinatra'
require "sinatra/reloader"
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  	erb :new_student
end

get '/sf' do
	@students = db.execute("SELECT name, campus, age FROM students WHERE campus = 'SF'")
	erb :home
end

get '/sd' do
	@students = db.execute("SELECT name, campus, age FROM students WHERE campus = 'SD'")
	erb :home
end

get '/nyc' do
	@students = db.execute("SELECT name, campus, age FROM students WHERE campus = 'NYC'")
	erb :home
end

get '/chi' do
	@students = db.execute("SELECT name, campus, age FROM students WHERE campus = 'CHI'")
	erb :home
end

get '/sea' do
	@students = db.execute("SELECT name, campus, age FROM students WHERE campus = 'SEA'")
	erb :home
end


get '/students/search' do
	erb :search
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/search' do
	
	if params['campus'] == 'SF'
	redirect '/sf'
	
	elsif params['campus'] == 'SD'  
	redirect '/sd'

	elsif params['campus'] == 'NYC'
	redirect '/nyc'
	
	elsif params['campus'] == 'CHI'
	redirect '/chi'
	
	elsif params['campus'] == 'SEA'
	redirect '/sea'
	end

end



# add static resources

