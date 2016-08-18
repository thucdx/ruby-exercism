module BookKeeping
	VERSION = 3
end
class Hamming
	def self.compute(a, b)
		r = 0
		raise ArgumentError.new if a.length != b.length

		a.length.times do |i|
			r += 1 if a[i] != b[i]
		end
		r
	end
end