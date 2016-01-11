require_relative 'alphabet'
require_relative 'upper_case'
require_relative 'lower_case'

class CeasarCipher
	attr_accessor :text, :new_string, :offset
	attr_reader :letter_upper, :letter_lower

	def initialize(text, offset)
		@text = text.to_s.split(//)
		@offset = offset.to_i
		@new_string = []
		@letter_upper = UpperCase.new
		@letter_lower = LowerCase.new
	end
	
	def encrypt
		text.each do |char|
			if punctuation(char)
				new_string << char
			elsif char ==	char.upcase
				new_string << letter_upper.execute(char, offset)			
			else				
				new_string << letter_lower.execute(char, offset)
			end
		end
	@new_string = @new_string.join()
	return "Your encrypted message is:  #{new_string}"
	end

	private

	def punctuation(char)
		char == " " || char == "," || char == "." || char == "!" || char == "?"
	end		
end
