require 'pry'

class BubbleSort

	attr_accessor :arr, :swap, :i, :words
	attr_reader :n, :m

	def initialize   							
		@arr = [1,4,2,5,3,4,9,2,7]        
		@words =['hi','hello','hey']      
		@swap = nil
		@n = arr.length
		@m = words.length
		@i = 0
		@swap = nil	
	end

	def bubble_sort
		while i < n do
			arr.each_with_index do | num, index |
					if index == 0
						swap = false				
					elsif arr[index-1] > arr[index]
						arr[index-1], arr[index] = arr[index], arr[index-1]					
					end
			end
			@i = i + 1
		end
		arr
	end

	def bubble_sort_by
		while i < m do
			words.each_with_index do | num, index |
				if index == 0
					swap = false
				elsif words[index-1].length > words[index].length
					words[index-1], words[index] = words[index], words[index-1]
				end
			end
			@i = i + 1
		end
		words
	end

end