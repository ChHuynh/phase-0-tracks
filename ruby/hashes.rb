#need to create a hash for user's data
# data we need from user: client name, age, decor theme, number of bedrooms,
# number of restrooms, budget, does the basement need to be decorated? own dogs or cats?
# 
#need to print data back to user so can doublecheck and edit if neccessary
#
#dont need to assume user error
# print out the latest version of the hash

client_profile = {
	:name => "client name",
	:age => "client age",
	:decor_theme => "decor theme",
	:bedrooms => "number of bedrooms",
	:restrooms => "number of restrooms",
	:budget => "budget",
	:basement_decor => "yes/no",
	:cats_or_dogs => "yes/no",
}

puts "what is the client's name?"
client_profile[:name] = gets.chomp

puts "how old is the client?"
client_profile[:age] = gets.chomp

puts "what kind of theme does the client want?"
client_profile[:decor_theme] = gets.chomp

puts "number of bedrooms?"
client_profile[:bedrooms] = gets.chomp

puts "number of restrooms?"
client_profile[:restrooms] = gets.chomp

puts "what is the budget we are working with?"
client_profile[:budget] = gets.chomp

puts "do we need to decorate the basement? (yes/no)"
client_profile[:basement_decor] = gets.chomp

puts "does the client have any cats or dogs? (yes/no)"
client_profile[:cats_or_dogs] = gets.chomp

puts "please review the client data below"
puts client_profile

puts "is the client data correct? (yes/no)"
accuracy = gets.chomp
if accuracy == "yes"
	print client_profile
else
	puts "which field needs to be changed?"
	change = gets.chomp.to_sym
	puts "what is the new value?"
	value = gets.chomp
	client_profile[change] = value
	print client_profile
end
