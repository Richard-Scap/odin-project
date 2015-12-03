require 'pry'
class CeasarCipher
	attr_accessor :text, :new_string

	def initialize(text)
		binding.pry
		@text = text.to_s.split(//)
		@new_string = []
	end
#	puts "What would you like to encrypt?"
#	print "> "
#	text = gets.chomp.split(//)
#
#	@new_string = []
#
#	encrypt(text)
	def self.alphabet
		num = 0
		Hash[('a'..'z').map do|char|
			[char, "#{num+=1}"]
		end]
	end

	def self.encrypt
		@text.each do |char|
			alph = alphabet["#{char}"].to_i
			alph -= 2
			@new_string << alphabet.key(alph.to_s)
		end
		@new_string = @new_string.join()

		return "Your encrypted message is:  #{@new_string}"
	end
end