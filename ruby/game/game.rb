class Game
  attr_accessor :secret, :guesses, :guess_count, :is_over, :guesses, :guess_check

  def initialize(word)
    @secret = word.downcase.split("")
    @is_over = false
    @guess_count = (@secret.length / 2 + 3)
    @guesses = []
    @guess_check = []
    
  end

  def check_guess(guess)
    @secret.include?(guess)
  end

  def blank
    @secret.map do |letter|
	letter = "_"
      end
    end
  
  def guess(letter)
  	guess_check << letter
  	puts "guesses so far: #{guess_check}"
  end

end # class end


###### comment out driver code to run rspec test

#user interaction stuff

puts "the word game begins!"
puts "enter the secret word"
word = gets.chomp
game = Game.new(word)
check = game.blank
until game.is_over
  	repeat = true
  	until repeat == false #  checking for repeated guesses
  	puts "there are #{game.guess_count} guesses left! please guess a letter."
  	puts "Secret Word: #{check.join(" ")}"
 
 	letter = gets.chomp
  
 		

  		if game.guess_check.include? letter
			puts "you have already guessed the letter #{letter}, guess another letter."
		else
			game.guess(letter)
			repeat = false
		end
	end
  

  	game.secret.each_with_index do |secret_letter, dash|
    check[dash] = letter.downcase if secret_letter == letter.downcase
    end

  	game.guess_count -= 1


  	unless game.check_guess(letter) == false #basically saying if the user gets the right word
   	game.guesses << letter.downcase
    game.guess_count += 1 #if player gets correct letter, does not lose a guess
   	end

  	if game.secret.uniq.sort == game.guesses.uniq.sort #compares the arrays, if they're the same it means the game is over
    	game.is_over = true
    	game.secret.join("")
    	puts "congratulations, you have figured out the word!"
  	elsif game.guess_count == 0
    	puts "well, you didnt quite figure out the word. it was #{game.secret.join("")}! better luck next time!"
    break
	end
end