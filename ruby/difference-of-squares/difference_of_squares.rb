module BookKeeping
	VERSION = 3
end

class Squares
	def initialize(size)
		@size = size
	end

	def square_of_sum
		(@size * (@size + 1) / 2) ** 2
	end
	
	def sum_of_squares
		@size * (@size + 1) * (2 * @size + 1) / 6
	end

	def difference
		square_of_sum - sum_of_squares
	end
end