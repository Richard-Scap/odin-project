require_relative 'bubble_sort'

class Sort

	attr_accessor :sort_numbers, :sort_words

	def initialize
		@sort_numbers = BubbleSort.bubble_sort
		@sort_words = BubbleSort.bubble_sort_by
	end

	def print_to_console
		sort_numbers
		sort_words
	end

	print_to_console

end
