# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative pulls the code in another file for use in the current file. require is using the full filepath to get to the info
#
require_relative 'state_data'  
class VirusPredictor
  # get info on initialization of an instance of a class, using the 3 arguments, and assigning instance variables of the 3.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_deaths = 0
    @speed = 0.0
  end
# calls upon predicted_deaths and speed_of_spread methods and uses instance variables from initialization.
 
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

 def death_numbers
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end

def virus_speed
 puts " and will spread across the state in #{@speed} months.\n\n"
end
  private
# calculates the number of deaths in a state using state of the art tech, and prints how many people die in an outbreak.
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
    
end
   


# uses math to figure out how fast virus will spread in a state, and print the statement of the math.
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

  end

end # class end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#50.times{ state_data = VirusPredictor.new
#    puts state_data.state
#    puts state_data.population
#    puts state_data.population_density
#}

STATE_DATA.each do |area, population_data|  
  state = VirusPredictor.new(area, population_data[:population_density], population_data[:population])
  state.virus_effects
  state.death_numbers
  state.virus_speed
end

#=======================================================================
# Reflection Section
#
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => the state was a string, and the data within states were symbols
# What does require_relative do? How is it different from require?
# => require_relataive requires relative to the current directory, require needs the filepath to propery run
# What are some ways to iterate through a hash?
#  each.do is pretty much the go to method for iterating through a hash, can also do things like select.do or keep.do, depending on how you want to iterate
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# the variables for the most part werent really necessary because they were already instance variables.
# What concept did you most solidify in this challenge?
# i had a better idea of calling on nested elements, and was something that I probably need to review.