require_relative 'alphabet'

class LowerCase
	attr_accessor :alph_lower

	def initialize
		@alph_lower = Alphabet.lower_case
	end

	def execute(char, offset)
		alph = alph_lower[char]
		alph = alph + offset
		if alph > 25
				alph = alph - 25
		else
				alph = alph
		end
		return alph_lower.key(alph)
	end
end