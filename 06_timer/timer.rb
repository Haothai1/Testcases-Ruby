class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		s = @seconds % 60
		m = @seconds / 60 % 60
		h = @seconds / 60 / 60
		"#{padded(h)}:#{padded(m)}:#{padded(s)}"
	end

	def padded(n)
		n < 10 ? '0'+ n.to_s : n.to_s
	end

end