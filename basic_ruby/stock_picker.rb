def stock_picker(prices)
	#intiialize absolute min and maximum difference
	min = prices[0]
	max_diff = prices[1] - prices[0]
	#initialize array for profit pair
	profit = []

	#iterate through array modifying min and max_diff
	# to find maximum profit
	prices.each{|price| 
		min = price if price < min
		if price - min > max_diff
			max_diff = price - min
			profit = [min, price]
		end
	}

	puts profit

end