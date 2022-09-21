def stock_picker(stock_prices)
  highest_diff = 0
  day = []
  
  stock_prices.each_with_index do |price_1, index_1|
    stock_prices.each_with_index do |price_2, index_2|
      next if index_1 == 0
      diff = price_1 - price_2
      if index_1 == index_2 then break end
      if diff > highest_diff
        highest_diff = diff
        day = [index_2, index_1]
      end
    end
  end
  day
end

sample = [17,3,6,9,15,8,6,1,10]
p stock_picker(sample)