print "how many employees will be processed?"
	employee_number = gets.chomp.to_i
	current_count = 0

while current_count < employee_number


print "What is your name?\n"
	interviewer_name = gets.chomp
print "How old are you?\n"
	age = gets.chomp.to_i
print "What year were you born?\n"
	dob = gets.chomp.to_i
print "Our company cafeteria serves garlic bread. Should we order some for you?(y/n)\n"
	garlic_question = gets.chomp
print "Would you like to enroll in the company's health insurance(y/n)\n"
	health_insurance = gets.chomp
print "please list any allergies you may have, one at a time type in done when finished.\n"
valid_input = false
until valid_input
	allergies = gets.chomp
	if allergies == "done"
		valid_input = true
	elsif allergies == "sunshine"
		valid_input = true
	else
	end
end

current_year = Time.new.year
age_match = current_year - dob
if age_match == age
	age_test = true	
else
	age_test = false
end

if garlic_question == "y"
	likes_garlic = true
else
	likes_garlic = false
end

if health_insurance == "y"
	wants_health_insurance = true
else
	wants_health_insurance = false
end

if interviewer_name == "Drake Cula" || interviewer_name == "Tu Fang" 
	vampire_name = true
else
	vampire_name == false
end

if allergies == "sunshine"
	print "#{interviewer_name} is probably a vampire.\n"
elsif vampire_name
	print "#{interviewer_name} is definitely a vampire\n"
elsif age_test && (likes_garlic || wants_health_insurance) 
	print "#{interviewer_name} is probably not a vampire.\n"
elsif age_test || (likes_garlic || wants_health_insurance) 
	print "#{interviewer_name} is probably a vampire.\n"
elsif
	print "#{interviewer_name} is almost certainly a vampire\n"
	
end
	current_count += 1
end