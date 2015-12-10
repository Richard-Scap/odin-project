require 'pry'

class CeasarCipher
	attr_accessor :text, :new_string, :offset


	def initialize(text, offset)
		@text = text.to_s.split(//)
		@offset = offset.to_i
		@new_string = []
	end

	
	def encrypt
		@text.each do |char|
			if char == " " || char == "," || char == "." || char == "!"
				@new_string << char
			elsif char ==	char.upcase
				alph = alphabet_upper["#{char}"].to_i
				alph = alph + @offset
				if alph > 26
					alph = alph - 26
				else
					alph = alph
				end
				@new_string << alphabet_upper.key(alph.to_s)				
			else				
				alph = alphabet["#{char}"].to_i
				alph = alph + @offset
				if alph > 26
					alph = alph - 26
				else
					alph = alph
				end
				@new_string << alphabet.key(alph.to_s)
			end
		end

	@new_string = @new_string.join()

		return "Your encrypted message is:  #{@new_string}"
	end

	private
#lower case alphabet hash
	def alphabet
		num = 0
		Hash[('a'..'z').map do|char|
			[char, "#{num+=1}"]
		end]
	end
#upper case alphabet hash
	def alphabet_upper
		num = 0
		Hash[('A'..'Z').map do |char|
			[char, "#{num+=1}"]
		end]
	end
end