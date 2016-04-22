require './lib/ceasar_cipher.rb'

puts "What message would you like to encrypt?"
text = gets.chomp

puts "Please select a number you would like to offset between -10 and 10."
offset = gets.chomp.to_i

puts CeasarCipher.new(text, offset).encrypt