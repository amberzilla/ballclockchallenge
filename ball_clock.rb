require_relative 'user_input'
require_relative 'clock.rb'

class BallClock
	def initialize
		input = UserInput.new
		@clock = Clock.new(input.initial_number)
	end
end

BallClock.new
