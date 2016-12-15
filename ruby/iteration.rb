#def like
#	alt_color = "blue"
#	puts "i like the color red"
#	yield(alt_color)
#end

#like { |alt_color| puts "i also like #{alt_color}"}

types_of_food = ["pizza", "burger", "pasta", "ice cream"]

names_of_pets = {
	:cat => "bob",
	:dog => "paws",
	:goldfish => "bubbles"
}

puts types_of_food

types_of_food.each do |types_of_food|
puts "I like #{types_of_food}!"
end 

really_likes_food = types_of_food.map do |types_of_food|
 
types_of_food.upcase
end

puts types_of_food
puts really_likes_food

types_of_food.map! do |types_of_food|
	puts types_of_food
	types_of_food.upcase
end

puts types_of_food

names_of_pets.each do |pet, name|
	puts "my #{pet}'s name is #{name}"
end

up_name_of_pets = names_of_pets.map do |pet, name|
 names_of_pets = [pet, name.upcase]	
end

#puts names_of_pets
puts up_name_of_pets


scores = [ 97, 42, 75 ]
scores.delete_if {|score| score < 80 } #=> [97]

puts scores

letters = ["a", "b", "c", "d", "e"]
letters.delete_if do |letter|
  letter =~ /[aeiou]/
end
p letters

letters.keep_if do |letter|
	letter =~ /[abc]/
end
p letters

array = [ 3, 4, 7, 12 ]
result = array.select do |elem|
  elem == 12
end

p result
new_list_of_pets = {}
new_list_of_pets = names_of_pets.drop_while { |pet,name| pet != :cat }  

p new_list_of_pets
