require_relative 'helper'
class Clock
	include Helper
	attr_reader :queue

	def initialize(ball_num)
		@ball_num = ball_num
		@days = 0

		@queue = Array.new(ball_num) {|i| i + 1}
		@current_queue = @queue.dup

		@minute_track = []
		@five_minute_track = []
		@hour_track = []
		minute
	end

	private 

		def minute
			while @minute_track.length < 4
				@minute_track.push(self.next_ball)
			end
			return_balls_to_queue(@minute_track)
			reset_track(@minute_track)
			five_minute
		end

		def five_minute
			while @five_minute_track.length < 11
				@five_minute_track.push(self.next_ball)
			end
			return_balls_to_queue(@five_minute_track)
			reset_track(@five_minute_track)
			hour
		end

		def hour
			while @hour_track.length < 11
				@hour_track.push(self.next_ball)
			end
			@days += 1
			return_balls_to_queue(@hour_track)
			reset_track(@hour_track)
			if queue_check
				puts "#{@ball_num} balls cycle after #{@days} days"
			else
				minute
			end
		end

	def queue_check
		 @current_queue == @queue
	end
end