require './alphabet.rb'
require './ceasar_cipher.rb'

class UpperCase

	def initialize
		@alph_upper = Alphabet.upper_case
	end

	def execute(char, offset)
		alph = @alph_upper[char]
		alph = alph + offset
		if alph > 25
				alph = alph - 25
		else
				alph = alph
		end
		return @alph_upper.key(alph)
	end
end