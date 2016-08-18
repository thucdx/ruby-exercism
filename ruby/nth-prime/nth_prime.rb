class Prime
		@@MAX = 1000000
		def self.nth(num)
				raise ArgumentError.new if num < 1
				@@primes ||= prime_list
				@@primes[num - 1]
		end

		private
		def self.prime_list
			arr = Array.new(@@MAX + 1, 1)
			arr[0] = arr[1] = 0
			(2..@@MAX).each do |i|
					if arr[i] == 1
						j = i * i
						while j <= @@MAX
							arr[j] = 0
							j += i
						end			
					end
			end	
			res = []
			arr.each_with_index do |v, i|
					res << i if v == 1
			end
			res
		end
end
