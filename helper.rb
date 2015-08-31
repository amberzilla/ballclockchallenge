module Helper
	def next_ball
		@current_queue.shift
	end

	def return_balls_to_queue(track)
		track.reverse.each {|ball| @current_queue << ball}
	end

	def reset_track(track)
		track.clear
	end
end