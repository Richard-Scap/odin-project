
class Alphabet
	def self.lower_case
		down = Hash.new
		('a'..'z').to_a.each_with_index do |char, index|
			down[char] = index
		end
		return down
	end
	def self.upper_case
		up = Hash.new
		('A'..'Z').to_a.each_with_index do |char, index|
			up[char] = index
		end
		return up
	end
end
