class StockPicker

#	attr_accessor :stock, :dayPrice, :priceDay, :buyDay_sellDay
	
		@stock = [17,3,6,9,15,8,6,1,10]
	 	@number = nil
	 	@profit = []
	 	@buyDay_sellDay = []
	 	@dayPrice = Hash.new
	 	@priceDay = Hash.new
	


		@stock.each_with_index do |num, index|
			@dayPrice[index] = num
		end
	


		@stock.each do |num|
		day1 = @dayPrice.key(num)
			@stock.each do |num2|
				day2 = @dayPrice.key(num2)
				if day1 <= day2
					@number = num2 - num
					@profit << @number
					@buyDay_sellDay << [num, num2]
					@priceDay[[day1, day2]] = @number
				else
				end
			end
		end
		
		puts "The best day to buy is #{@priceDay.key(@profit.max)[0]} and " + 
		"the best day to sell is #{@priceDay.key(@profit.max)[1]}, " +
		"with a profit of #{@profit.max}."
end
