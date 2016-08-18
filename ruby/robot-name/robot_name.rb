module BookKeeping
	VERSION = 2
end

require 'set'

class Robot
	@@NAMES = Set.new
	attr_accessor :name
	
	public
	def reset
			@name = self.class.rand_name
	end

	def initialize
			@name = self.class.rand_name	
	end
	
	private 
	def self.rand_name 
		name = ""
		loop do	
			name = self.rand_char + self.rand_char + self.rand_dig + self.rand_dig + self.rand_dig
			break if !@@NAMES.include?(name)
		end

		@@NAMES.add(name)
		name
	end

	def self.rand_char
		(65 + rand(0..25)).chr
	end

	def self.rand_dig
		rand(0..9).to_s
	end

end

