class UserInput
	attr_reader :initial_number
	def initialize
		puts "Please enter the number of balls you would like to start with: "
		input = gets.chomp
		@initial_number = input.to_i
		if @initial_number.between?(27,127)
			@initial_number
		else
			puts "Numbers must be between 27 and 127"
		end
	end
end