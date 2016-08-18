module BookKeeping
	VERSION = 2
end

class Pangram
	def self.is_pangram?(str)
		m = {}
		('a'..'z').each { |c| m[c] = 0 }
		str.downcase.each_char {
			|c| m[c] = 1 if 'a' <= c && c <= 'z'
		}

	#	print m
		m.each {
			|k, v| return false if v < 1
		}
		
		true
		
	end
end 