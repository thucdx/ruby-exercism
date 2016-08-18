module BookKeeping
	VERSION = 2
end

class Fixnum
	@@ROMANS = [ [1,'I'], [4,'IV'], [5, 'V'], [9, 'IX'], [10, 'X'], [40, 'XL'], [50, 'L'], [90, 'XC'], [100, 'C'], [400, 'CD'], [500, 'D'], [900, 'CM'], [1000, 'M'] ]
				
	def to_roman
		num = self.real
		v = @@ROMANS
		l = v.length - 1
		res = ""
		while l >= 0 && num > 0
			if num >= v[l][0]
					res += v[l][1]
					num -= v[l][0]
			else
					l -= 1
			end
		end
		
		res
	end
end
