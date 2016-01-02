require 'pry'

class BubbleSort



	arr = [1,4,3,7,8,2,4,9,0,3]
	swap = nil
	n = arr.length
	i = 0

	while i < n do
		arr.each_with_index do | num, index |
			if index == 0
				swap = false				
			elsif arr[index-1] > arr[index]
				arr[index-1], arr[index] = arr[index], arr[index-1]					
			end
		end
		i = i+1
	end
	print arr
end