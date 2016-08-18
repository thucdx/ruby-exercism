module BookKeeping
	VERSION = 2
end

class Raindrops
	def self.convert(num)
		m = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}
		res = ""
		m.each { |k, v| res += v if num % k == 0 }
		if res != ""
			return res
		end
		return num.to_s

	end
end