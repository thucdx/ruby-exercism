class Sieve
	def initialize(num)
		@num = num
	end

	def primes
		arr = Array.new(@num + 1, 1)
		arr[0] = arr[1] = 0
		(2..@num).each do |i|
			j = i * i
			while j <= @num
				arr[j] = 0
				j += i
			end
		end
	
		res = []
		arr.each_with_index {
			|v, i| res << i if v == 1
		}

		res
	end
end

