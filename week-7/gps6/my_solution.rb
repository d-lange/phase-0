# Virus Predictor

# I worked on this challenge [by myself, with: Kevin Sullivan].
# We spent [1.2] hours on this challenge.

# EXPLANATION OF require_relative

# require_relative means associating another file in the same directory, so that the variables, methods, classes, hashes, arrays, are all accessible.

require_relative 'state_data'

class VirusPredictor

# instantiates an new instance of the class, and assigning to the instance variables the  given values

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# virus_effects calls predicted_deaths method, passing in the 3 instance variables.
# and calls speed_of_spread method, passing in 2 instance variables, @population_density and @state

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  def self.states_report(states)
    states.each do |state, data|
      state = VirusPredictor.new(state, data[:population_density], data[:population])
      state.virus_effects
    end
  end

  private

# calculates the death rate given a population density and a population.
# outputs a string, that contains the state and number of deaths predicted from the outbreak.

  def predicted_deaths
    # predicted deaths is solely based on population density

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    if @population_density <= 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population / 500).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# returns a string that contains the estimated time an outbreak will completely cover a given state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, data|
#   state = VirusPredictor.new(state, data[:population_density], data[:population])
#   state.virus_effects
# end

VirusPredictor.states_report(STATE_DATA)


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

    # The first is a string while the second is the symbol. The first hash uses old syntax => while the nested hash uses symbol syntax to point to it's value.

# What does require_relative do? How is it different from require?

    # require_relative is able to access a file that is in the same directory as the file you are in. require would need the path of the file.

# What are some ways to iterate through a hash?

    # We used .each in this challenge

# When refactoring virus_effects, what stood out to you about the variables, if anything?

    # That the instance variables could be accessed anywhere in the class, and the other methods weren't using the instance variables for their inputs and outputs, meaning virus_effects only needs to call on the methods and not using the instance variables as parameters.

# What concept did you most solidify in this challenge?

    # Analyzing pre-existing code and being able to understand what it's doing and how it's working. I think this is a skill that is really important int he programming world.