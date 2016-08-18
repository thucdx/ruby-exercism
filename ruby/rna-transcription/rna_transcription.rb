module BookKeeping
	VERSION = 4
end

class Complement
	def self.of_dna(dna)
		m = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
		res = ""

		dna.each_char { |c|
			if m.has_key?(c)
				res += m[c]
			else
				return ""
			end
	 	}
		res
	end
end 
