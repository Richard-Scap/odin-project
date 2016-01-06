require './bubble_sort.rb'

class Sort

	attr_accessor :sort_numbers, :sort_words

	def initialize
		@sort_numbers = BubbleSort.new.bubble_sort
		@sort_words = BubbleSort.new.bubble_sort_by
	end

	def print_to_console
		print sort_numbers
		print "\n #{sort_words}"
	end

end

Sort.new.print_to_console
