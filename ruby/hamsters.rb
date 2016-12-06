print "What is your hamsters name?\n"
	hamster_name = gets.chomp.to_s
print "From 1-10, how loud is your hamster?\n"
	noise_level = gets.chomp.to_i
print "What is your hamster's fur color?\n"
	fur_color = gets.chomp.to_s
print "Is your hamster ready for adoption? (Y/N)\n"
	adoptionable = gets.chomp.to_s.upcase
print "What is your hamster's estimated age?\n"
	age = gets.chomp
	if age == ""
		age = nil 
	end

# p hamster_name
# p noise_level
# p fur_color
# p adoptionable
# p age

print "Your hamster's name is #{hamster_name}.\n" 
print "Their noise level is #{noise_level}.\n"
print "Their fur color is #{fur_color}.\n"

if adoptionable == "Y"
	puts "Hamster is adoptionable."
elsif  adoptionable == "N"
	puts "Hamster is not adoptionable."
end

if age == nil
	puts "We don't know your hamster's age."
else
	puts "Your hamster is #{age} years old."
end

