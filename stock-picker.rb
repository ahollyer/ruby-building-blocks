arr = [17,3,6,9,15,8,6,1,10]


def stock_picker(array)

	counter = 0
	best_deal = 0
	days = []

	while counter < array.length do
		buy_price = array[counter]

		(counter...array.length-1).each do |stock|
			sell_price = array[stock+1]
			profit = sell_price - buy_price

			if profit > best_deal
				best_deal = profit
				days = [counter, stock+1]
			end
		end
		counter += 1
	end
	return days	
end

answer = stock_picker(arr)
puts "The best days to buy and sell respectively are #{answer}"