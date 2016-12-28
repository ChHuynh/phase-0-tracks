module Shout
  def yell_angrily(words)
  p  words.upcase + "!!!" + " :("
  end

  def yell_happily(words)
  p	"YEE " + words.upcase + "!" + " :D"
  end
end

#puts Shout.yell_angrily("darn")

#puts Shout.yell_happily("ice cream!")

class Lawn_grandpa
	include Shout
end

class Kids
	include Shout
end

grandpa = Lawn_grandpa.new
grandpa.yell_angrily("get off my lawn")

kids = Kids.new
kids.yell_happily("boi")
