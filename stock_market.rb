array = [1,2,3]
k = gets.to_i

possible_trades = []
all_timelines = []
valid_timelines = []
possible_profits = Hash.new
answer = Hash.new

#Find all possible trades
array.each_with_index do |price1, buy_index|
  array.each_with_index do |price2, sell_index|
    if price2 > price1 && sell_index > buy_index
      trade = [buy_index, sell_index]
      possible_trades << trade
    end
  end
end

#Find all timelines
k.times do |i|
  possible_trades.combination(i + 1).to_a.each do |timeline|
    all_timelines << timeline
  end
end

#Remove impossible timelines
all_timelines.each do |x|
  if x.flatten.uniq.length == x.flatten.length
    valid = true

    x.each do |trade|
      ((trade[0]+1)..(trade[1]-1)).each do |n|
        if x.flatten.include? n
          valid = false
          break
        end
      end
    end

    if valid == true
      valid_timelines << x
    end
  end
end

#Find all possible profits
valid_timelines.each do |t|
  profit = 0
  t.each do |trade|
    profit += array[trade[1]] - array[trade[0]]
  end
  possible_profits[t] = profit
end

#Find the best timeline
highest = 0
best_timeline = nil
possible_profits.each do |key, value|
  if value > highest
    highest = value
    best_timeline = key
  end
end

#Print out answers
best_timeline.each do |trade|
  puts "BUY for #{array[trade[0]]} at position: #{trade[0]} and SELL for #{array[trade[1]]} at position: #{trade[1]} for a profit of #{array[trade[1]] - array[trade[0]]}"
end

puts "TOTAL PROFIT: #{highest}"

# puts possible_profits.sort.reverse.first
