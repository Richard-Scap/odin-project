class BubbleSort
	attr_accessor :arr
	attr_accessor :i
	
	def initialize(arr)
	#the array which will be sorted
		@arr = arr 
		@i = 0
	end

	def sort	
		while i < arr.length do
			arr.each_with_index do | num, index |
				next if index == 0
				if arr[index-1] > arr[index]
					arr[index-1], arr[index] = arr[index], arr[index-1]					
				end
			end
			@i += 1
		end
		return arr
	end
end